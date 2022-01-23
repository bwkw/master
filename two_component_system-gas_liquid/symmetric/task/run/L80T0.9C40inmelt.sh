#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe task/cps task/in.melt/L80T0.9C40inmelt.sh
