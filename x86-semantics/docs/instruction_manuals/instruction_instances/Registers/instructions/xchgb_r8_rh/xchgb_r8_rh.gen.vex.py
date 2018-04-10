import angr
proj = angr.Project('./instructions/xchgb_r8_rh/xchgb_r8_rh.o')
print proj.arch
print proj.entry
print proj.filename
irsb = proj.factory.block(proj.entry).vex
irsb.pp()