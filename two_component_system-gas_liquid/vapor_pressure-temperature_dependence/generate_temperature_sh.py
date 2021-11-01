# コマンドライン引数一つ目にtemperature

import sys

def make_file(filename, left_num_a, left_num_b, left_density_a, left_density_b, temperature):
    with open(filename, "a") as f:      
        f.write("/home/apps/lammps/lmp_serial < in.melt/T{}/lna{}-lnb{}-lda{}-ldb{}.in\n".format(temperature, left_num_a, left_num_b, left_density_a, left_density_b))

temperature = float(sys.argv[1])
for i in range(1,20):
    half_volume = 40*40*40
    left_num = 22*22*22*4
    left_num_a_ratio = float(i) * 0.05
    left_num_a = round(left_num * left_num_a_ratio)
    left_num_b = left_num - left_num_a
    right_num = 0
    left_density_a = left_num_a/half_volume
    left_density_b = left_num_b/half_volume
    make_file("task/temperature{}.sh".format(temperature), left_num_a, left_num_b, left_density_a, left_density_b, temperature)
