#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/ln108000-rn0-ld1.6875-rd0-T0.9.in 
