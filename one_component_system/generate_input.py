import math

def make_file(filename, left_density, right_density, temperature):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/l{}-r{}.atoms\n\n".format(left_density, right_density))
        f.write("mass 1 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature,temperature))
        f.write("thermo 1000\n")
        f.write("thermo_style custom time temp press\n\n")
        f.write("run 2000000")


left_num = 6*6*6*4
right_num = 0
left_density = 0.8
right_density = 0.0
temperature = 1.0
volume = (left_num/left_density)*2
make_file("input/l{}-r{}-T{}.input".format(left_density, right_density, temperature), left_density, right_density, temperature)
