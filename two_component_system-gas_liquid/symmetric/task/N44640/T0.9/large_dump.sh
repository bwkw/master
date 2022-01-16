#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 19 --oversubscribe task/cps task/N44640/T0.9/inmelt.sh
