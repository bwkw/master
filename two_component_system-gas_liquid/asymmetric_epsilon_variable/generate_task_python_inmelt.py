# task/python/in.meltファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、イプシロン（epsilon)
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、変数イプシロンを入れる

import sys


def make_file(filename, length, temperature, a_composition_ratio, epsilon):
    with open(filename, "a") as f:
        f.write("python3 generate_in.melt.py < data/param/L{}T{}E{}/C{}.param\n".format(length, temperature, epsilon, a_composition_ratio))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
epsilon = float(sys.argv[4])

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/python/in.melt/L{}T{}C{}E{}inmelt.sh".format(length, temperature, composition_number, epsilon), length, temperature, a_composition_ratio, epsilon)
