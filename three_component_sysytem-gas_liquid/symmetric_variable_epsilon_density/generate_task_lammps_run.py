# task/lammps/runファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れる

import math
import sys

def make_base_file(filename):
    with open(filename, "w") as f:
        f.write("#!/bin/sh\n\n")
        f.write("#SBATCH -p F144cpu\n")
        f.write("#SBATCH -N 144\n")
        f.write("#SBATCH -n 18432\n")
        f.write("#SBATCH --mail-type=ALL\n")
        f.write("#SBATCH --mail-user=n.shota.1139@keio.jp\n\n")
        f.write("source /home/issp/materiapps/intel/lammps/lammpsvars.sh\n\n")

def make_file(filename, length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num):
    with open(filename, "a") as f:
        f.write("srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L{}T{}E{}CD{}/lan{}-lbn{}-lcn{}-ran{}-rbn{}-rcn{}.in &\n".format(length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num))

def make_end_file(filename):
    with open(filename, "a") as f:
        f.write("wait\n")


param_dic = {}
for l in range(5):
    a, b = input().split("=")
    param_dic[a] = b

length = int(param_dic["length"])
composition_number = float(param_dic["composition_number"])
temperature = float(param_dic["temperature"])
variable_epsilon = float(param_dic["variable_epsilon"])
c_density = float(param_dic["c_density"])

half_volume = length**3
make_base_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density))
left_s = round(math.pow((half_volume*0.7/4), 1/3))
right_s = round(math.pow((half_volume*0.02/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
total_num = left_num + right_num
for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    left_c_num = round(left_num * c_density)
    left_ab_num = left_num - left_c_num
    left_a_num = round(left_ab_num * a_composition_ratio)
    left_b_num = left_ab_num - left_a_num
    right_c_num = round(right_num * c_density)
    right_ab_num = right_num - right_c_num
    right_a_num = round(right_ab_num * a_composition_ratio)
    right_b_num = right_ab_num - right_a_num
    make_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, variable_epsilon, c_density, left_a_num, left_b_num, left_c_num, right_a_num, right_b_num, right_c_num)

make_end_file("task/lammps/run/L{}T{}CN{}E{}CD{}.sh".format(length, temperature, composition_number, variable_epsilon, c_density))
