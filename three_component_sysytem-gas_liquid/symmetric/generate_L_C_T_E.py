# パラメータファイルを作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、イプシロン（Epsilon）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、イプシロンを入れる

import sys
import os

def make_file(filename, length, a_composition_ratio, temperature, variable_epsilon):
    with open(filename, "w") as f:
        f.write("length={}\n".format(length))
        f.write("a_composition_ratio={}\n".format(a_composition_ratio))
        f.write("temperature={}\n".format(temperature))
        f.write("variable_epsilon={}\n".format(variable_epsilon))

length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
variable_epsilon = float(sys.argv[4])

if not os.path.exists("data/param/L{}T{}E{}".format(length, temperature, variable_epsilon)):
    os.mkdir("data/param/L{}T{}E{}".format(length, temperature, variable_epsilon))

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("data/param/L{}T{}E{}/C{}.param".format(length, temperature, variable_epsilon, a_composition_ratio), length, a_composition_ratio, temperature, variable_epsilon)
