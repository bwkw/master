# in.meltファイル作成

import math
import os


def make_file(filename, length, temperature, left_a_num, left_b_num, right_a_num, right_b_num):
    with open(filename, "w") as f:
        f.write("units lj\n")
        f.write("atom_style atomic\n")
        f.write("boundary p p p\n\n")
        f.write("read_data data/atoms/L{}/lan{}-lbn{}-ran{}-rbn{}.atoms\n\n".format(length, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("mass 1 1.0\n")
        f.write("mass 2 1.0\n\n")
        f.write("reset_timestep  0\n")
        f.write("timestep        0.001\n\n")
        f.write("pair_style lj/cut 3.0\n")
        f.write("pair_coeff 1 1 1.0 1.0 3.0\n")
        f.write("pair_coeff 1 2 1.05 0.9 3.0\n")
        f.write("pair_coeff 2 2 1.05 1.0 3.0\n\n")
        f.write("fix 1 all nvt temp {} {} 0.01\n\n".format(temperature, temperature))
        f.write("run 3000000\n\n")
        f.write("dump id all atom 1000 ../../../../../../work/k0117/k011706/asymmetric/data/dump.melt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.dump\n\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("run 1000000")


## 標準入力（paramファイル）からパラメータ取得
param_dic = {}
for l in range(3):
    a, b = input().split("=")
    param_dic[a] = b

length = int(param_dic["length"])
a_composition_ratio = float(param_dic["a_composition_ratio"])
temperature = float(param_dic["temperature"])
half_volume = length**3
left_s = round(math.pow((half_volume*0.7/4), 1/3))
right_s = round(math.pow((half_volume*0.02/4), 1/3))
left_num = left_s**3*4
right_num = right_s**3*4
total_num = left_num + right_num
left_a_num = round(left_num * a_composition_ratio)
left_b_num = left_num - left_a_num
right_a_num = round(right_num * a_composition_ratio)
right_b_num = right_num - right_a_num

if not os.path.exists('data/in.melt'):
    os.mkdir('data/in.melt')
if not os.path.exists('data/in.melt/L{}T{}'.format(length, temperature)):
    os.mkdir(('data/in.melt/L{}T{}'.format(length, temperature)))
if not os.path.exists('data/dump.melt'):
    os.mkdir('data/dump.melt')
if not os.path.exists('data/dump.melt/L{}T{}'.format(length, temperature)):
    os.mkdir(('data/dump.melt/L{}T{}'.format(length, temperature)))
make_file("data/in.melt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.in".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num),
length, temperature, left_a_num, left_b_num, right_a_num, right_b_num)
