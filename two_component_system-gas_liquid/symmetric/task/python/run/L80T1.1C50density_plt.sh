#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 4 --oversubscribe task/cps task/python/density_plt/L80T1.1C50density_plt.sh
