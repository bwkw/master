# densityを可視化する用のpltファイル作成
# コマンドライン引数に、Aの組成比分割個数を入れる

import math
import os
import sys

def make_file(filename, length, temperature, composition_number, left_a_num, left_b_num, right_a_num, right_b_num):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density/density_fitting_img/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.pdf'\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("set xlabel '{/Arial-Italic x}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set xrange [0.2:0.8]\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,16'\n")
        f.write("set fit logfile 'density/density_fitting/L{}T{}C{}.log'\n\n".format(length, temperature, composition_number))
        f.write("da(x) = (dal+dag)/2 - ((dal-dag)/2)*tanh((x-a)/(2*b))\n")
        f.write("db(x) = (dbl+dbg)/2 - ((dbl-dbg)/2)*tanh((x-c)/(2*d))\n")
        f.write("fit da(x) 'density/density/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.density' u 1:2 via a, b, dal, dag\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("fit db(x) 'density/density/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.density' u 1:3 via c, d, dbl, dbg\n\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("plot 'density/density/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.density' u 1:2 title 'density_a' with points pt 1, da(x) title 'density_a-fit' with line lt 1 lc rgb hsv2rgb(0, 1, 1)\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))
        f.write("replot 'density/density/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.density' u 1:3 title 'density_b' with points pt 1, db(x) title 'density_b-fit' with line lt 1 lc rgb hsv2rgb(1, 1, 0)\n".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))

## 標準入力（paramファイル）からパラメータ取得
param_dic = {}
for l in range(3):
    a, b = input().split("=")
    param_dic[a] = b

composition_number = 50
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
if not os.path.exists('density/density_fitting_plt'):
    os.mkdir('density/density_fitting_plt')
if not os.path.exists('density/density_fitting_plt/L{}T{}'.format(length, temperature)):
    os.mkdir(('density/density_fitting_plt/L{}T{}'.format(length, temperature)))
make_file("density/density_fitting_plt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.plt".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num), length, temperature, composition_number, left_a_num, left_b_num, right_a_num, right_b_num)
