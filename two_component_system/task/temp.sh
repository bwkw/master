#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR
mpirun -np 8 /home/apps/lammps/lmp_serial<in.melt/ln42592-rn42592-ld0.6655-rd0.6655-T0.2.in
