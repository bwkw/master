#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/ln5324-rn5324-ld0.6655-rd0.6655-T1.5.in 
