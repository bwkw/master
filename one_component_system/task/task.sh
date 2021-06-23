#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/l2.0-r0.0-T1.0.melt > dump.melt/l2.0-r0.0-T1.0.melt 
