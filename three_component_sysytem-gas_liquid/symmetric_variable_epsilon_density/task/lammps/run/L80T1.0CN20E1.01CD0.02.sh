#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan17860-lbn339350-lcn7290-ran538-rbn10218-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan35721-lbn321489-lcn7290-ran1076-rbn9680-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan53582-lbn303628-lcn7290-ran1613-rbn9143-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan71442-lbn285768-lcn7290-ran2151-rbn8605-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan89302-lbn267908-lcn7290-ran2689-rbn8067-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan107163-lbn250047-lcn7290-ran3227-rbn7529-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan125023-lbn232187-lcn7290-ran3765-rbn6991-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan142884-lbn214326-lcn7290-ran4302-rbn6454-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan160744-lbn196466-lcn7290-ran4840-rbn5916-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan178605-lbn178605-lcn7290-ran5378-rbn5378-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan196466-lbn160744-lcn7290-ran5916-rbn4840-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan214326-lbn142884-lcn7290-ran6454-rbn4302-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan232186-lbn125024-lcn7290-ran6991-rbn3765-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan250047-lbn107163-lcn7290-ran7529-rbn3227-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan267908-lbn89302-lcn7290-ran8067-rbn2689-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan285768-lbn71442-lcn7290-ran8605-rbn2151-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan303628-lbn53582-lcn7290-ran9143-rbn1613-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan321489-lbn35721-lcn7290-ran9680-rbn1076-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 2 -N 4 lammps < data/in.melt/L80T1.0E1.01CD0.02/lan339350-lbn17860-lcn7290-ran10218-rbn538-rcn220.in
wait
