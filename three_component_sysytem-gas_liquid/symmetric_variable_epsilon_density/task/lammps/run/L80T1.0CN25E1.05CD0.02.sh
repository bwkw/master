#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan14288-lbn342922-lcn7290-ran430-rbn10326-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan28577-lbn328633-lcn7290-ran860-rbn9896-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan42865-lbn314345-lcn7290-ran1291-rbn9465-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan57154-lbn300056-lcn7290-ran1721-rbn9035-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan71442-lbn285768-lcn7290-ran2151-rbn8605-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan85730-lbn271480-lcn7290-ran2581-rbn8175-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan100019-lbn257191-lcn7290-ran3012-rbn7744-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan114307-lbn242903-lcn7290-ran3442-rbn7314-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan128596-lbn228614-lcn7290-ran3872-rbn6884-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan142884-lbn214326-lcn7290-ran4302-rbn6454-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan157172-lbn200038-lcn7290-ran4733-rbn6023-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan171461-lbn185749-lcn7290-ran5163-rbn5593-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan185749-lbn171461-lcn7290-ran5593-rbn5163-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan200038-lbn157172-lcn7290-ran6023-rbn4733-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan214326-lbn142884-lcn7290-ran6454-rbn4302-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan242903-lbn114307-lcn7290-ran7314-rbn3442-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan257191-lbn100019-lcn7290-ran7744-rbn3012-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan271480-lbn85730-lcn7290-ran8175-rbn2581-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan285768-lbn71442-lcn7290-ran8605-rbn2151-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan300056-lbn57154-lcn7290-ran9035-rbn1721-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan314345-lbn42865-lcn7290-ran9465-rbn1291-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan328633-lbn28577-lcn7290-ran9896-rbn860-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 4 lammps < data/in.melt/L80T1.0E1.05CD0.02/lan342922-lbn14288-lcn7290-ran10326-rbn430-rcn220.in
wait
