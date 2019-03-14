#!/usr/bin/python3
import xml.etree.ElementTree as et
import subprocess, sys, os, shutil, re, signal
from collections import defaultdict
import functools

default_backend = "ocaml"

legal_backends = ["java", "ocaml", "llvm"]

k_opts = "-Xmx32g"

os.environ["K_OPTS"] = os.environ.get("K_OPTS", "") + " " + k_opts

instruction_directory_prefix = "semantics"
instruction_directories = ["immediateInstructions", "systemInstructions", "registerInstructions", "memoryInstructions"]

def find_env_or_die(name):
    ret = os.environ.get(name, "")
    if len(ret.strip()) == 0:
        print("Failed to find environment variable {0}.".format(name), file=sys.stderr)
        sys.exit(1)
    return ret


semantics_directory = find_env_or_die("X86_SEMANTICS")
definition_directory = os.path.join(semantics_directory, "semantics")
decoder_directory = find_env_or_die("X86_DECODER")

under_test_directory = os.path.join(semantics_directory, "semantics", "underTestInstructions") 
single_file_definition = os.path.join(semantics_directory, "semantics", "x86-instructions-semantics.k")
parser_script = os.path.join(semantics_directory, "semantics", "parser_script.sh")

sys.path.insert(0, os.path.join(decoder_directory, "generator")) # Ick, https://stackoverflow.com/questions/4383571/importing-files-from-different-folder 

from generate import generate_decoder

def await_process_or_interrupt(name, process, stdin=None):
    outdata = None
    try:
        outdata = process.communicate(stdin)
    except KeyboardInterrupt:
        os.kill(process.pid, signal.SIGINT)
        sys.exit(1)
    if process.returncode != 0:
        print("{0} exited with nonzero retcode {1}".format(name, process.returncode), file=sys.stderr)
        sys.exit(1)
    return outdata

def read_xed(input_file):
    xed_process = subprocess.Popen(["xed", "-i", input_file, "-xml"], stdout=subprocess.PIPE, stderr=sys.stderr)
    (xed_stdout, _) = await_process_or_interrupt("XED", xed_process)
    return xed_stdout.decode("utf-8")

def read_instructions(xed_output):
    instruction_start = "<ASMLINE>"
    instruction_end = "</ASMLINE>"
    instructions = []
    capturing = False
    this_instruction = []
    for line in xed_output.split("\n"):
        if line.strip() == instruction_start:
            capturing = True
        if capturing:
            this_instruction.append(line)
        if line.strip() == instruction_end:
            capturing = False
            instructions.append("\n".join(this_instruction))
            this_instruction.clear()
    return instructions

class ParsedInstruction(object):
    def __init__(self, inst_str):
        parsed = et.fromstring(inst_str)
        iclass = parsed.find("INS").find("ICLASS")
        if iclass is None:
            print("No ICLASS? {0}".format(inst_str), file=sys.stderr)
        else:
            self.iclass = iclass.text
        self.operands = [(operand[0].tag, operand[0].attrib["bits"], operand[0].text) for operand in parsed.findall("OPERAND")]

def parse_instruction(inst):
    return ParsedInstruction(inst)

def parse_instructions(instructions):
    return [parse_instruction(inst) for inst in instructions]

def disable_inum_extractor():
    shutil.copy(
            os.path.join(decoder_directory, "config", "extractor-false.k"),
            os.path.join(decoder_directory, "inum-extractor-configuration.k")
    )
    shutil.copy(
            os.path.join(decoder_directory, "config", "x86-configuration.k"),
            os.path.join(decoder_directory, "full-configuration.k")
    )

def regenerate_decoder(iclasses):
    disable_inum_extractor()
    with open(os.path.join(decoder_directory, "generated_decoder_rules.k"), "w") as f:
        return generate_decoder(iclasses, f)

def delete_old_instructions():
    shutil.rmtree(under_test_directory)
    os.mkdir(under_test_directory) 

def inum_file_pair_from_line(line):
    split = line.split("|")
    assert len(split) == 3
    return (int(split[2]), split[0])

def get_instructions_from_inums(inums):
    with open(os.path.join(decoder_directory, "generator", "datafiles", "full-map.txt"), "r") as f:
        return list(set(map(lambda pair: pair[1], filter(lambda pair: pair[0] in inums,  map(inum_file_pair_from_line, f.readlines())))))

def copy_instructions(full_names):
    for name in full_names:
        shutil.copy(name, under_test_directory)

accept_re = re.compile("^module |^requires|imports|Autogenerated|endmodule", flags=re.IGNORECASE)
def accept_line(line):
    return accept_re.search(line) is None

def make_single_file_definition(full_names):
    prologue = """requires "x86-configuration.k"
requires "x86-flag-checks-syntax.k"

module X86-INSTRUCTIONS-SEMANTICS
  imports X86-CONFIGURATION
  imports X86-FLAG-CHECKS-SYNTAX

"""
    epilogue = "endmodule"    
    with open(single_file_definition, "w") as out_f:
        print(prologue, file=out_f)
        for name in full_names:
            with open(name, "r") as in_f:
                for line in in_f.readlines():
                    if accept_line(line):
                        print(line, file=out_f)
        print(epilogue, file=out_f)
        

def regenerate_semantics(inums):
    assert len(inums) > 0
    delete_old_instructions()
    full_names = get_instructions_from_inums(inums)
    print(full_names)
    assert len(full_names) > 0
    copy_instructions(full_names) # This step is actually not necessary (we create the single file definition without using the copied files), but it's useful for debugging.
    make_single_file_definition(full_names)


def invoke_kompile(backend):
    kompile_process = subprocess.Popen(
            ["time", 
                "kompile", os.path.join(definition_directory, "x86-semantics.k"), 
                "--syntax-module", "ELF-SYNTAX", 
                "--main-module", "X86-SEMANTICS", 
                "--debug", 
                "-v", "--backend", backend, 
                "-I", os.path.join(definition_directory, "common"),
                "-I", decoder_directory,
                "-I", definition_directory
            ], 
            stdout=sys.stdout, 
            stderr=sys.stderr, 
            cwd=definition_directory
    )
    await_process_or_interrupt("Kompile", kompile_process)


def invoke_krun(elf_file, extra_args):
    command = ["time", "krun", "-o", "none", "--parser", parser_script, elf_file]
    command.extend(extra_args)
    krun_process = subprocess.Popen(command, stdin=sys.stdin, stdout=sys.stdout, stderr=sys.stderr, cwd=definition_directory)
    await_process_or_interrupt("KRun", krun_process)

def main():
    if len(sys.argv) == 1:
        print("Usage ./run-on-elf ELF-FILE [BACKEND=ocaml] [ARGS_TO_KRUN]*")
        sys.exit(1)
    backend = sys.argv[2] if len(sys.argv) == 3 else default_backend
    assert backend in legal_backends
    elf_file = sys.argv[1]
    print("Finding instructions in elf", file=sys.stderr)
    instructions = parse_instructions(read_instructions(read_xed(sys.argv[1])))
    iclasses = sorted(list(set([inst.iclass for inst in instructions])))
    if len(iclasses) == 0:
        print("No iclasses found (is this elf valid?", file=sys.stderr)
        sys.exit(1)
    print("Generating decoder with {0} iclasses".format(len(iclasses)), file=sys.stderr)
    inums = regenerate_decoder(iclasses)
    print("Generating semantics with {0} inums".format(len(inums)), file=sys.stderr)
    regenerate_semantics(inums)
    print("Invoking kompile", file=sys.stderr)
    invoke_kompile(backend)
    print("Running on semantics", file=sys.stderr)
    invoke_krun(elf_file, sys.argv[2:])

if __name__ == "__main__":
    main()