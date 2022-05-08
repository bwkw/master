# task/python/atomsファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、シグマ(Sigma)
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、変数シグマを入れる

import sys

def make_file(filename, length, temperature, a_composition_ratio, epsilon):
    with open(filename, "a") as f:
        f.write("python3 generate_atoms.py < data/param/L{}T{}E{}/C{}.param\n".format(length, temperature, epsilon, a_composition_ratio))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
epsilon = float(sys.argv[4])

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("task/python/atoms/L{}C{}atoms.sh".format(length, composition_number), length, temperature, a_composition_ratio, epsilon)
