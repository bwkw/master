# task/python/in.meltファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れる

import sys


def make_file(filename, length, temperature, a_composition_ratio, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_density.py < data/param/L{}T{}E{}CD{}/AC{}.param\n".format(length, temperature, variable_epsilon, c_density, a_composition_ratio))

param_dic = {}
for l in range(5):
    a, b = input().split("=")
    param_dic[a] = b

length = int(param_dic["length"])
composition_number = float(param_dic["composition_number"])
temperature = float(param_dic["temperature"])
variable_epsilon = float(param_dic["variable_epsilon"])
c_density = float(param_dic["c_density"])

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/python/density/L{}T{}CN{}E{}CD{}density.sh".format(length, temperature, composition_number, variable_epsilon, c_density), length, temperature, a_composition_ratio, variable_epsilon, c_density)