# task/python/in.meltファイル作成
# 系の長さ（Length）、Aの組成比（CompositionRatio）、温度（Temperature）、イプシロン（epsilon）、Cの密度（c_density）
# コマンドライン引数に、系の長さ、Aの組成比分割個数、温度、イプシロン、Cの密度を入れる

import sys
import os

def make_task_parameter_file(filename, length, composition_number, temperature, variable_epsilon, c_density):
    with open(filename, "w") as f:
        f.write("length={}\n".format(length))
        f.write("composition_number={}\n".format(composition_number))
        f.write("temperature={}\n".format(temperature))
        f.write("variable_epsilon={}\n".format(variable_epsilon))
        f.write("c_density={}\n".format(c_density))

def make_task_all_file(filename, length, composition_number, temperature, variable_epsilon, c_density):
    with open(filename, "a") as f:
        f.write("python3 generate_task_python_atoms.py < task/param/L{}CN{}T{}E{}CD{}.sh\n".format(length, composition_number, temperature, variable_epsilon, c_density))
        f.write("python3 generate_task_python_inmelt.py < task/param/L{}CN{}T{}E{}CD{}.sh\n".format(length, composition_number, temperature, variable_epsilon, c_density))
        f.write("python3 generate_task_python_density.py < task/param/L{}CN{}T{}E{}CD{}.sh\n".format(length, composition_number, temperature, variable_epsilon, c_density))
        f.write("python3 generate_task_python_density_fitting_plt.py < task/param/L{}CN{}T{}E{}CD{}.sh\n".format(length, composition_number, temperature, variable_epsilon, c_density))
        f.write("python3 generate_task_lammps_run.py < task/param/L{}CN{}T{}E{}CD{}.sh\n".format(length, composition_number, temperature, variable_epsilon, c_density))


length = int(sys.argv[1])
composition_number = int(sys.argv[2])
temperature = float(sys.argv[3])
variable_epsilon = float(sys.argv[4])
c_density = float(sys.argv[5])

if not os.path.exists("task/param"):
    os.mkdir("task/param")

if not os.path.exists("task/python/all"):
    os.mkdir("task/python/all")

make_task_parameter_file("task/param/L{}CN{}T{}E{}CD{}.sh".format(length, composition_number, temperature, variable_epsilon, c_density), length, composition_number, temperature, variable_epsilon, c_density)

make_task_all_file("task/python/all/L{}CN{}T{}E{}CD{}.sh".format(length, composition_number, temperature, variable_epsilon, c_density), length, composition_number, temperature, variable_epsilon, c_density)
