import math

def make_file(filename, left_num, right_num, temperature, sigma):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/ln{}-rn{}.atoms\n\n".format(left_num, right_num))
        f.write("mass 1 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 {} 3.0\n\n".format(sigma))
        f.write("fix 1 all nvt temp {0} {0} 0.01\n\n".format(temperature))
        f.write("run 200000\n\n")
        f.write("thermo 100\n")
        f.write("thermo_style custom time temp press\n\n")
        f.write("dump id all atom 100 dump.melt/ln{}-rn{}-T{}.dump\n\n".format(left_num, right_num, temperature))
        f.write("run 5000")

length = 50
half_volume = length**3
left_s = round(math.pow((half_volume*0.7/4), 1/3))
right_s = round(math.pow((half_volume*0.02/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
temperature = 1.0
sigma = 1.2

make_file("input/ln{}-rn{}-T{}-sigma{}.input".format(left_num, right_num, temperature, sigma), left_num, right_num, temperature, sigma)
