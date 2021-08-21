#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/ln108000-rn0-ld0.8-rd0.0-T0.95.in 
