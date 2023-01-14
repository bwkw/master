#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < data/in.melt/L100T1.0E2.0CD0.01/lan278176-lbn417263-lcn7025-ran7782-rbn11673-rcn197-first.in
