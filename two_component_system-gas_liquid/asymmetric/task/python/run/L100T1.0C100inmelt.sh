#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe task/cps task/python/in.melt/L100T1.0C100inmelt.sh
