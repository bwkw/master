# コマンドライン引数一つ目で温度を指定

import sys

def make_file(filename, temperature):
    with open(filename, "w") as f:
        f.write("#!/bin/bash\n")
        f.write("#PBS -l nodes=1:ppn=20\n")
        f.write("cd $PBS_O_WORKDIR\n\n")
        f.write("mpirun -np 4 --oversubscribe ./cps task/temperature{}.sh".format(temperature))

temperature = float(sys.argv[1])
make_file("task/T{}_gl.sh".format(temperature), temperature)
