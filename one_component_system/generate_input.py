import math

def make_file(filename, left_num, right_num, left_density, right_density, temperature):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/ln{}-rn{}-ld{}-rd{}.atoms\n\n".format(left_num, right_num, left_density, right_density))
        f.write("mass 1 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {0} {0} 0.01\n\n".format(temperature))
        f.write("run 200000\n\n")
        f.write("thermo 100\n")
        f.write("thermo_style custom time temp press\n\n")
        f.write("dump id all atom 100 dump.melt/ln{}-rn{}-ld{}-rd{}-T{}.dump\n\n".format(left_num, right_num, left_density, right_density, temperature))
        f.write("run 5000")


half_volume = 40*40*40
left_num = 9*9*9*4
right_num = 0
left_density = left_num/half_volume
right_density = right_num/half_volume
length = math.pow(half_volume, 1/3)
temperature = 1.0
make_file("input/ln{}-rn{}-ld{}-rd{}-T{}.input".format(left_num, right_num, left_density, right_density, temperature), left_num, right_num, left_density, right_density, temperature)
