#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/lna38333-lnb4259-lda0.598953125-ldb0.066546875-T0.9.in 
