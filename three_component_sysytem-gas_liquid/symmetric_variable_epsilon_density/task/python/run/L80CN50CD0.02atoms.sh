#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe task/cps task/python/atoms/L80CN50CD0.02atoms.sh
#!/bin/bash
#PBS -l nodes=1:ppn=20
cd $PBS_O_WORKDIR

mpirun -np 4 --oversubscribe task/cps task/python/atoms/L80CN50CD0.02atoms.sh