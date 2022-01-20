# パラメータファイルを作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度を入れてしまおう

import sys
import os

def make_file(filename, length, a_composition_ratio, temperature):
    with open(filename, "w") as f:
        f.write("length={}\n".format(length))
        f.write("a_composition_ratio={}\n".format(a_composition_ratio))
        f.write("temperature={}\n".format(temperature))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])

if not os.path.exists("data/param/L{}T{}".format(length, temperature)):
    os.mkdir("data/param/L{}T{}".format(length, temperature))

for i in range(1, composition_number):
    a_composition_ratio = (1/composition_number) * int(i)
    make_file("data/param/L{}T{}/C{}.param".format(length, temperature, a_composition_ratio), length, a_composition_ratio, temperature)
