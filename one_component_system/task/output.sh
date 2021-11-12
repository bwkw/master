#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < input/ln2916-rn0-ld0.0455625-rd0.0-T1.0.input > output/ln2916-rn0-ld0.0455625-rd0.0-T1.0.output 
