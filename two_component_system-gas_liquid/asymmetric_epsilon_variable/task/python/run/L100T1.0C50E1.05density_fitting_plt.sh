#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe task/cps task/python/density_fitting_plt/L100T1.0C50E1.05density_fitting_plt.sh
