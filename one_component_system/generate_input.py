import math

def make_file(filename, left_density, right_density):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n\n")
        f.write("read_data atoms/l{}-r{}.atoms\n\n".format(left_density, right_density))
        f.write("mass 1 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.0001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_modify shift yes\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp 1.0 1.0 0.8\n\n")
        f.write("thermo 10\n")
        f.write("thermo_style custom time temp press\n\n")
        f.write("run 20000")


volume = 16384
left_num = 16384
right_num = 0
left_density = left_num/volume
right_density = right_num/volume
length = math.pow(volume, 1/3)
make_file("input/l{}-r{}.input".format(left_density, right_density), left_density, right_density)
