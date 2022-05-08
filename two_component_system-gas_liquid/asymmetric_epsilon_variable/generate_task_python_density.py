# task/python/densityファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、シグマ(Sigma)
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、変数シグマを入れる

import sys

def make_file(filename, length, temperature, a_composition_ratio, variable_sigma):
    with open(filename, "a") as f:
        f.write("python3 generate_density.py < data/param/L{}T{}S{}/C{}.param\n".format(length, temperature, variable_sigma, a_composition_ratio))


length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
variable_sigma = float(sys.argv[4])

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/python/density/L{}T{}C{}S{}density.sh".format(length, temperature, composition_number, variable_sigma), length, temperature, a_composition_ratio, variable_sigma)
