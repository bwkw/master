#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < data/in.melt/L100T1.0/lan140493-lbn561971-ran3930-rbn15722-last.in
