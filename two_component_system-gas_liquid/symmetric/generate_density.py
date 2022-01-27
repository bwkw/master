# dumpファイルからdensityファイルを作成する

import math
import os
import re


## dumpファイルを読み込み、二種類の粒子の位置リストを作成する
def loadfile(filename):
    with open(filename) as f:
        ### aは出力する範囲を特定する変数
        a = 0
        ### bはdumpを吐いている数(最大6)
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
                if type=="1":
                    type1_x_list.append(x)
                else:
                    type2_x_list.append(x)

## 二種類の粒子の密度リストからdensityファイルを作成する
def makefile(filename, density_list1, density_list2):
    with open(filename, "w") as f:
        for i in range(len(density_list1)):
            f.write("{} {} {}\n".format(round(float(0.001)*i, 3), density_list1[i], density_list2[i]))

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

type1_x_list = []
type2_x_list = []
loadfile("data/dump.melt/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.dump".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num))

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
    else:
        x -= 1
        density_position = math.floor(float(x)/float(0.001))
        type1_density_list[density_position] += 1

for i in range(len(type2_x_list)):
    x = float(type2_x_list[i])
    if x < 1:
        density_position = math.floor(float(x)/float(0.001))
        type2_density_list[density_position] += 1
    elif x == 1:
        type2_density_list[999] += 1
    else:
        x -= 1
        density_position = math.floor(float(x)/float(0.001))
        type1_density_list[density_position] += 1

type1_density_list = list(map(lambda x: x/(0.001*half_volume*2*5), type1_density_list))
type2_density_list = list(map(lambda x: x/(0.001*half_volume*2*5), type2_density_list))

if not os.path.exists('density'):
    os.mkdir('density')
    if not os.path.exists('density/density'):
        os.mkdir('density/density')
        if not os.path.exists('density/density/L{}T{}'.format(length, temperature)):
            os.mkdir(('density/density/L{}T{}'.format(length, temperature)))
makefile("density/density/L{}T{}/lan{}-lbn{}-ran{}-rbn{}.density".format(length, temperature, left_a_num, left_b_num, right_a_num, right_b_num), type1_density_list, type2_density_list)


# liquid_density = 0
# gas_density = 0
# for i in range(100, 401):
#     liquid_density += density_list[i]

# for i in range(600, 901):
#     gas_density += density_list[i]

# ave_liquid_density = liquid_density/300
# ave_gas_density = gas_density/300
# ave_gas_liquid_density = (ave_gas_density + ave_liquid_density)/2

# print("temperature:{}".format(temperature))
# print("liquid_density:{}".format(ave_liquid_density))
# print("gas_density:{}".format(ave_gas_density))
# print("ave_density:{}".format(ave_gas_liquid_density))