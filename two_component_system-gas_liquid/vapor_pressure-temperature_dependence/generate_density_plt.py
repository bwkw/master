# dumpファイルから密度を計算する
# コマンドライン引数一つ目で組成割合を何分割するかを指定
# 例）20と入力すると、0.05,0.1,....0.95
# コマンドライン引数二つ目で温度を指定

import os
import sys

def make_file(filename, left_num_a, left_num_b, left_density_a, left_density_b, temperature):
    with open(filename, "w") as f:
        f.write("set term pdf\n")
        f.write("set out 'density_img/T{}/lna{}-lnb{}-lda{}-ldb{}.pdf'\n".format(temperature, left_num_a, left_num_b, left_density_a, left_density_b))
        f.write("set xlabel '{/Arial-Italic x}'\n")
        f.write("set ylabel '{/Arial-Italic density}'\n")
        f.write("set xlabel font 'Arial,15'\n")
        f.write("set ylabel font 'Arial,15'\n")
        f.write("set tics font 'Arial,10'\n")
        f.write("set key font 'Arial,16'\n")
        f.write("plot 'density/T{4}/lna{0}-lnb{1}-lda{2}-ldb{3}.density' u 1:2 title '粒子A', 'density/T{4}/lna{0}-lnb{1}-lda{2}-ldb{3}.density' u 1:3 title '粒子B',\n".format(left_num_a, left_num_b, left_density_a, left_density_b, temperature))
        
half_volume = 40*40*40
left_num = 22*22*22*4
for i in range(1, int(sys.argv[1])):
    left_num_a_ratio = (1/int(sys.argv[1])) * int(i)
    left_num_a = round(left_num * left_num_a_ratio)
    left_num_b = left_num - left_num_a
    right_num = 0
    left_density_a = left_num_a/half_volume
    left_density_b = left_num_b/half_volume
    temperature = float(sys.argv[2])

    if not os.path.exists('make_plt/T{}'.format(temperature)):
        os.mkdir(('make_plt/T{}'.format(temperature)))
    if not os.path.exists('density_img/T{}'.format(temperature)):
        os.mkdir(('density_img/T{}'.format(temperature)))

    make_file("make_plt/T{}/lna{}-lnb{}-lda{}-ldb{}.plt".format(temperature, left_num_a, left_num_b, left_density_a, left_density_b), left_num_a, left_num_b, left_density_a, left_density_b, temperature)
