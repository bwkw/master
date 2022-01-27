# task/python/in.meltファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れる

import sys


def make_file(filename, length, temperature, a_composition_ratio):
    with open(filename, "a") as f:
        f.write("python3 generate_in.melt.py < data/param/L{}T{}/C{}.param\n".format(length, temperature, a_composition_ratio))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/python/in.melt/L{}T{}C{}inmelt.sh".format(length, temperature, composition_number), length, temperature, a_composition_ratio)
