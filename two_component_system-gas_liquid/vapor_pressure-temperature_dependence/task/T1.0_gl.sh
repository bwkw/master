#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe ./cps task/temperature1.0.sh