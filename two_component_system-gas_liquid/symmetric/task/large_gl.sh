#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < in.melt/lna37044-lnb48668-lda0.5788125-ldb0.7604375-T0.99.in
