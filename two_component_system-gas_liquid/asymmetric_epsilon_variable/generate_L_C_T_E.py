# パラメータファイルを作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、イプシロン（epsilon)
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、変数イプシロンを入れる

import sys
import os

def make_file(filename, length, a_composition_ratio, temperature, epsilon):
    with open(filename, "w") as f:
        f.write("length={}\n".format(length))
        f.write("a_composition_ratio={}\n".format(a_composition_ratio))
        f.write("temperature={}\n".format(temperature))
        f.write("epsilon={}\n".format(epsilon))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
epsilon = float(sys.argv[4])

if not os.path.exists("data/param/L{}T{}E{}".format(length, temperature, epsilon)):
    os.mkdir("data/param/L{}T{}E{}".format(length, temperature, epsilon))

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("data/param/L{}T{}E{}/C{}.param".format(length, temperature, epsilon, a_composition_ratio), length, a_composition_ratio, temperature, epsilon)
