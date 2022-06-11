#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan18225-lbn346275-ran549-rbn10427.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan36450-lbn328050-ran1098-rbn9878.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan54675-lbn309825-ran1646-rbn9330.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan72900-lbn291600-ran2195-rbn8781.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan91125-lbn273375-ran2744-rbn8232.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan109350-lbn255150-ran3293-rbn7683.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan127575-lbn236925-ran3842-rbn7134.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan145800-lbn218700-ran4390-rbn6586.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan164025-lbn200475-ran4939-rbn6037.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan182250-lbn182250-ran5488-rbn5488.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan200475-lbn164025-ran6037-rbn4939.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan218700-lbn145800-ran6586-rbn4390.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan236925-lbn127575-ran7134-rbn3842.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan255150-lbn109350-ran7683-rbn3293.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan273375-lbn91125-ran8232-rbn2744.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan291600-lbn72900-ran8781-rbn2195.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan309825-lbn54675-ran9330-rbn1646.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan328050-lbn36450-ran9878-rbn1098.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.02/lan346275-lbn18225-ran10427-rbn549.in &
wait
