# in.meltファイルを作成
# コマンドライン引数は、
# 1. 組成比を何分割するか？
# 2. 温度

import os
import sys

def make_file(filename, total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data atoms/N{}/lna{}-lnb{}-lda{}-ldb{}-rna{}-rnb{}-rda{}-rdb{}.atoms\n\n"
    .format(total_num, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b))
        f.write("mass 1 1.0\n")
        f.write("mass 2 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n")
        f.write("pair_coeff 1 2 1.05 0.9 3.0\n")
        f.write("pair_coeff 2 2 1.0 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature, temperature))
        f.write("run 500000\n\n")
        f.write("dump id all atom 1000 dump.melt/N{}/T{}/lna{}-lnb{}-lda{}-ldb{}-rna{}-rnb{}-rda{}-rdb{}.dump\n\n".format(total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b))
        f.write("run 5000")


half_volume = 40*40*40
left_num = 22*22*22*4
right_num = 8*8*8*4
total_num = left_num + right_num
for i in range(1, int(sys.argv[1])):
    atoms = []
    a_ratio = (1/int(sys.argv[1])) * int(i)
    left_num_a = round(left_num * a_ratio)
    left_num_b = left_num - left_num_a
    right_num_a = round(right_num * a_ratio)
    right_num_b = right_num - right_num_a
    left_density_a = left_num_a/half_volume
    left_density_b = left_num_b/half_volume
    right_density_a = right_num_a/half_volume
    right_density_b = right_num_b/half_volume
    temperature = float(sys.argv[2])
    if not os.path.exists('in.melt/N{}'.format(total_num)):
        os.mkdir('in.melt/N{}'.format(total_num))
        os.mkdir('dump.melt/N{}'.format(total_num))
    if not os.path.exists('in.melt/N{}/T{}'.format(total_num, temperature)):
        os.mkdir('in.melt/N{}/T{}'.format(total_num, temperature))
        os.mkdir('dump.melt/N{}/T{}'.format(total_num, temperature))
    make_file("in.melt/N{}/T{}/lna{}-lnb{}-lda{}-ldb{}-rna{}-rnb{}-rda{}-rdb{}.in"
    .format(total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b),
    total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b)
