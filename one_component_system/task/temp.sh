#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_serial<input/l0.8-r0.0-T1.0.input > dat/l0.8-r0.0-T1.0.dat
