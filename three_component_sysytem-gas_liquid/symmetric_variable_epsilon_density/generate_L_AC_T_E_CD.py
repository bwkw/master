# パラメータファイルを作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、イプシロン（Epsilon）、Cの密度（density）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、イプシロン、密度を入れる

import sys
import os

def make_file(filename, length, a_composition_ratio, temperature, variable_epsilon, c_density):
    with open(filename, "w") as f:
        f.write("length={}\n".format(length))
        f.write("a_composition_ratio={}\n".format(a_composition_ratio))
        f.write("temperature={}\n".format(temperature))
        f.write("variable_epsilon={}\n".format(variable_epsilon))
        f.write("c_density={}\n".format(c_density))

length = int(sys.argv[1])
temperature = float(sys.argv[2])
composition_number = int(sys.argv[3])
variable_epsilon = float(sys.argv[4])
c_density = float(sys.argv[5])

if not os.path.exists("data/param/L{}T{}E{}CD{}".format(length, temperature, variable_epsilon, c_density)):
    os.mkdir("data/param/L{}T{}E{}CD{}".format(length, temperature, variable_epsilon, c_density))

for i in range(1, composition_number):
    a_composition_ratio = round((1/composition_number)*int(i), 3)
    make_file("data/param/L{}T{}E{}CD{}/AC{}.param".format(length, temperature, variable_epsilon, c_density, a_composition_ratio), length, a_composition_ratio, temperature, variable_epsilon, c_density)
