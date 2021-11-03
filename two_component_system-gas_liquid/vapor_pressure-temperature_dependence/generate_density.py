# dumpファイルから密度を計算する
# コマンドライン引数一つ目で組成割合を何分割するかを指定
# 例）20と入力すると、0.05,0.1,....0.95
# コマンドライン引数二つ目で温度を指定

import math
import os
import re
import sys

def loadfile(filename):
    with open(filename) as f:
        # aは出力する範囲を特定する変数
        a = 0
        # bはdumpを吐いている数(最大2001)
        b = 0
        for line in f:
            if re.match("ITEM: ATOMS id type xs ys zs", line):
                a = 1
                b += 1
                continue
            elif re.match("ITEM: TIMESTEP", line):
                a = 0
            if ((a == 1) and ((b >= 2) and (b <= 6))):
                line = line.split()
                type = line[1]
                x = line[2]
                if type == "1":
                    type1_x_list.append(x)
                else:
                    type2_x_list.append(x)
        
def makefile(filename, density_list1, density_list2):
    with open(filename, "w") as f:
        for i in range(len(density_list1)):
            f.write("{} {} {}\n".format(round(float(0.001)*i, 3), density_list1[i], density_list2[i]))

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
    type1_x_list = []
    type2_x_list = []
    loadfile("dump.melt/T{}/lna{}-lnb{}-lda{}-ldb{}.dump".format(temperature, left_num_a, left_num_b, left_density_a, left_density_b))

    x_interval = 0.001
    x_interval_num = int(1/float(x_interval))
    type1_density_list = [0]*(x_interval_num)
    type2_density_list = [0]*(x_interval_num)

    for i in range(len(type1_x_list)):
        x = float(type1_x_list[i])
        if x < 1:
            density_position = math.floor(float(x)/float(0.001))
            type1_density_list[density_position] += 1
        elif x == 1:
            type1_density_list[999] += 1

    for i in range(len(type2_x_list)):
        x = float(type2_x_list[i])
        if x < 1:
            density_position = math.floor(float(x)/float(0.001))
            type2_density_list[density_position] += 1
        elif x == 1:
            type2_density_list[999] += 1

    type1_density_list = list(map(lambda x: x/(0.001*half_volume*2*5), type1_density_list))
    type2_density_list = list(map(lambda x: x/(0.001*half_volume*2*5), type2_density_list))

    if not os.path.exists('density/T{}'.format(temperature)):
        os.mkdir(('density/T{}'.format(temperature)))
    
    makefile("density/T{}/lna{}-lnb{}-lda{}-ldb{}.density".format(temperature, left_num_a, left_num_b, left_density_a, left_density_b), type1_density_list, type2_density_list)
