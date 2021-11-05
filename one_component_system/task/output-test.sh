#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_mpi < input/ln42592-rn0-ld0.6655-rd0-T1.0-thermo100-last5.input > output/ln42592-rn0-ld0.6655-rd0-T1.0-thermo100-last5.output    
