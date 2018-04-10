import angr
proj = angr.Project('./instructions/divb_r8/divb_r8.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()