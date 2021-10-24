#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/lna21296-lnb21296-lda0.33275-ldb0.33275-T0.9.in 
