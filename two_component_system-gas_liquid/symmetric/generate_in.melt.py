import math

def make_file(filename, left_num_a, left_num_b, left_density_a, left_density_b, temperature):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/lna{}-lnb{}-lda{}-ldb{}.atoms\n\n".format(left_num_a, left_num_b, left_density_a, left_density_b))
        f.write("mass 1 1.0\n")
        f.write("mass 2 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n")
        f.write("pair_coeff 1 2 1.05 0.9 3.0\n")
        f.write("pair_coeff 2 2 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature, temperature))
        f.write("run 200000\n\n")
        f.write("dump id all atom 1000 dump.melt/lna{}-lnb{}-lda{}-ldb{}-T{}.dump\n\n".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature))
        f.write("run 5000")

half_volume = 40*40*40
left_num = 22*22*22*4
left_num_a_ratio = 0.1
left_num_a = round(left_num * left_num_a_ratio)
left_num_b = left_num - left_num_a
right_num = 0
left_density_a = left_num_a/half_volume
left_density_b = left_num_b/half_volume
temperature = 0.9
make_file("in.melt/lna{}-lnb{}-lda{}-ldb{}-T{}.in".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature), left_num_a, left_num_b, left_density_a, left_density_b, temperature)
