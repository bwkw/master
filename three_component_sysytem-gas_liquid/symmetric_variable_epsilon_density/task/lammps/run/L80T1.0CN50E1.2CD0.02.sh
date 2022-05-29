#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan7144-lbn350066-lcn7290-ran215-rbn10541-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan14288-lbn342922-lcn7290-ran430-rbn10326-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan21433-lbn335777-lcn7290-ran645-rbn10111-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan28577-lbn328633-lcn7290-ran860-rbn9896-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan35721-lbn321489-lcn7290-ran1076-rbn9680-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan42865-lbn314345-lcn7290-ran1291-rbn9465-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan50009-lbn307201-lcn7290-ran1506-rbn9250-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan57154-lbn300056-lcn7290-ran1721-rbn9035-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan64298-lbn292912-lcn7290-ran1936-rbn8820-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan71442-lbn285768-lcn7290-ran2151-rbn8605-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan78586-lbn278624-lcn7290-ran2366-rbn8390-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan85730-lbn271480-lcn7290-ran2581-rbn8175-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan92875-lbn264335-lcn7290-ran2797-rbn7959-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan100019-lbn257191-lcn7290-ran3012-rbn7744-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan107163-lbn250047-lcn7290-ran3227-rbn7529-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan114307-lbn242903-lcn7290-ran3442-rbn7314-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan121451-lbn235759-lcn7290-ran3657-rbn7099-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan128596-lbn228614-lcn7290-ran3872-rbn6884-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan135740-lbn221470-lcn7290-ran4087-rbn6669-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan142884-lbn214326-lcn7290-ran4302-rbn6454-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan150028-lbn207182-lcn7290-ran4518-rbn6238-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan157172-lbn200038-lcn7290-ran4733-rbn6023-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan164317-lbn192893-lcn7290-ran4948-rbn5808-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan171461-lbn185749-lcn7290-ran5163-rbn5593-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan178605-lbn178605-lcn7290-ran5378-rbn5378-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan185749-lbn171461-lcn7290-ran5593-rbn5163-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan192893-lbn164317-lcn7290-ran5808-rbn4948-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan200038-lbn157172-lcn7290-ran6023-rbn4733-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan207182-lbn150028-lcn7290-ran6238-rbn4518-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan214326-lbn142884-lcn7290-ran6454-rbn4302-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan221470-lbn135740-lcn7290-ran6669-rbn4087-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan228614-lbn128596-lcn7290-ran6884-rbn3872-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan235759-lbn121451-lcn7290-ran7099-rbn3657-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan242903-lbn114307-lcn7290-ran7314-rbn3442-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan250047-lbn107163-lcn7290-ran7529-rbn3227-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan257191-lbn100019-lcn7290-ran7744-rbn3012-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan264335-lbn92875-lcn7290-ran7959-rbn2797-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan271480-lbn85730-lcn7290-ran8175-rbn2581-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan278624-lbn78586-lcn7290-ran8390-rbn2366-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan285768-lbn71442-lcn7290-ran8605-rbn2151-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan292912-lbn64298-lcn7290-ran8820-rbn1936-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan300056-lbn57154-lcn7290-ran9035-rbn1721-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan307201-lbn50009-lcn7290-ran9250-rbn1506-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan314345-lbn42865-lcn7290-ran9465-rbn1291-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan321489-lbn35721-lcn7290-ran9680-rbn1076-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan328633-lbn28577-lcn7290-ran9896-rbn860-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan335777-lbn21433-lcn7290-ran10111-rbn645-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan342922-lbn14288-lcn7290-ran10326-rbn430-rcn220.in
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L80T1.0E1.2CD0.02/lan350066-lbn7144-lcn7290-ran10541-rbn215-rcn220.in
wait
