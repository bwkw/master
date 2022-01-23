# task/lammps/in.meltファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れる

import math
import sys


def make_file(filename, length, temperature, left_a_num, left_b_num, right_a_num, right_b_num):
    with open(filename, "a") as f:
        f.write("lammps < data/in.melt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.in\n"
.format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
half_volume = length**3
left_s = round(math.pow((half_volume*0.7/4), 1/3))
right_s = round(math.pow((half_volume*0.02/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
total_num = left_num + right_num
for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    left_a_num = round(left_num * a_composition_ratio)
    left_b_num = left_num - left_a_num
    right_a_num = round(right_num * a_composition_ratio)
    right_b_num = right_num - right_a_num
    make_file("task/lammps/in.melt/L{}T{}C{}inmelt.sh".format(length, temperature, composition_number), length, temperature, left_a_num, left_b_num, right_a_num, right_b_num)
