import math

def make_file(filename, left_num, right_num, left_density, right_density, temperature):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/ln{}-rn{}-ld{}-rd{}.atoms\n\n".format(left_num, right_num, left_density, right_density))
        f.write("mass 1 1.0\n")
        f.write("mass 2 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n")
        f.write("pair_coeff 1 2 1.05 0.9 3.0\n")
        f.write("pair_coeff 2 2 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature,temperature))
        f.write("dump id all atom 1000 dump.melt/ln{}-rn{}-ld{}-rd{}-T{}.dump\n\n".format(left_num, right_num, left_density, right_density, temperature))
        f.write("run 1000000")

half_volume = 20*20*20
left_num = 11*11*11*4
right_num = 11*11*11*4
left_density = left_num/half_volume
right_density = right_num/half_volume
temperature = 1.1
volume = (left_num/left_density)*2
make_file("in.melt/ln{}-rn{}-ld{}-rd{}-T{}.in".format(left_num, right_num, left_density, right_density, temperature), left_num, right_num, left_density, right_density, temperature)
