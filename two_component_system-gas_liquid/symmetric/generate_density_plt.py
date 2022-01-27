# densityを可視化する用のpltファイル作成

import math
import os

def make_file(filename, length, temperature, left_a_num, left_b_num, right_a_num, right_b_num):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density/density_img/L{0}T{1}/lan{2}-lbn{3}-ran{4}-rbn{5}.pdf'\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("set xlabel '{/Arial-Italic x}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,16'\n")
        f.write("plot 'density/density/L{0}T{1}/lan{2}-lbn{3}-ran{4}-rbn{5}.density' u 1:2 title '粒子A', 'density/density/L{0}T{1}/lan{2}-lbn{3}-ran{4}-rbn{5}.density' u 1:3 title '粒子B',\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))


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

if not os.path.exists('density'):
    os.mkdir('density')
if not os.path.exists('density/density_plt'):
    os.mkdir('density/density_plt')
if not os.path.exists('density/density_plt/L{}T{}'.format(length, temperature)):
    os.mkdir(('density/density_plt/L{}T{}'.format(length, temperature)))
make_file("density/density_plt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.plt".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num), length, temperature, left_a_num, left_b_num, right_a_num, right_b_num)
