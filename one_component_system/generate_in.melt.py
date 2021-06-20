import math

def make_file(filename, left_density, right_density, temperature):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/l{}-r{}.atoms\n\n".format(left_density, right_density))
        f.write("mass 1 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.0002\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_modify shift yes\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature,temperature))
        f.write("dump id all atom 5000 dump.melt/l{}-r{}-T{}.melt\n\n".format(left_density, right_density, temperature))
        f.write("run 500000")


left_num = 6*6*6*4
right_num = 0
left_density = 2.0
right_density = 0.0
temperature = 0.7
volume = left_num/left_density
make_file("in.melt/l{}-r{}-T{}.melt".format(left_density, right_density, temperature), left_density, right_density, temperature)
