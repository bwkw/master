#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/lna42592-lnb42592-lda0.6655-ldb0.6655-T1.0.in

