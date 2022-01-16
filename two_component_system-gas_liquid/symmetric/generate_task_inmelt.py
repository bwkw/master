# 並列実行するin.meltを書き出したshell scriptを作成
# コマンドライン引数は、
# 1. 組成比を何分割するか？
# 2. 温度

import os
import sys

def make_file(filename, total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b):
    with open(filename, "a") as f:      
        f.write("/home/apps/lammps/lmp_serial < in.melt/N{}/T{}/lna{}-lnb{}-lda{}-ldb{}-rna{}-rnb{}-rda{}-rdb{}.in\n"
    .format(total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b))


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
    if not os.path.exists('task/N{}'.format(total_num)):
        os.mkdir('task//N{}'.format(total_num))
    if not os.path.exists('task/N{}/T{}'.format(total_num, temperature)):
        os.mkdir('task/N{}/T{}'.format(total_num, temperature))
    make_file("task/N{}/T{}/inmelt.sh"
    .format(total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b),
    total_num, temperature, left_num_a, left_num_b, left_density_a, left_density_b, right_num_a, right_num_b, right_density_a, right_density_b)
