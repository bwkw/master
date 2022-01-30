#!/bin/sh

#SBATCH -p F16cpu
#SBATCH -N 16
#SBATCH -n 128
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan9112-lbn355388-ran274-rbn10702.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan18225-lbn346275-ran549-rbn10427.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan27338-lbn337162-ran823-rbn10153.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan36450-lbn328050-ran1098-rbn9878.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan45562-lbn318938-ran1372-rbn9604.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan54675-lbn309825-ran1646-rbn9330.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan63787-lbn300713-ran1921-rbn9055.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan72900-lbn291600-ran2195-rbn8781.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan82012-lbn282488-ran2470-rbn8506.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan91125-lbn273375-ran2744-rbn8232.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan100238-lbn264262-ran3018-rbn7958.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan109350-lbn255150-ran3293-rbn7683.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan118462-lbn246038-ran3567-rbn7409.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan127575-lbn236925-ran3842-rbn7134.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan136688-lbn227812-ran4116-rbn6860.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan145800-lbn218700-ran4390-rbn6586.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan154912-lbn209588-ran4665-rbn6311.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan164025-lbn200475-ran4939-rbn6037.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan173138-lbn191362-ran5214-rbn5762.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan182250-lbn182250-ran5488-rbn5488.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan191362-lbn173138-ran5762-rbn5214.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan200475-lbn164025-ran6037-rbn4939.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan209587-lbn154913-ran6311-rbn4665.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan218700-lbn145800-ran6586-rbn4390.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan227812-lbn136688-ran6860-rbn4116.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan236925-lbn127575-ran7134-rbn3842.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan246038-lbn118462-ran7409-rbn3567.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan255150-lbn109350-ran7683-rbn3293.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan264262-lbn100238-ran7958-rbn3018.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan273375-lbn91125-ran8232-rbn2744.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan282488-lbn82012-ran8506-rbn2470.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan291600-lbn72900-ran8781-rbn2195.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan300712-lbn63788-ran9055-rbn1921.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan309825-lbn54675-ran9330-rbn1646.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan318938-lbn45562-ran9604-rbn1372.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan328050-lbn36450-ran9878-rbn1098.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan337162-lbn27338-ran10153-rbn823.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan346275-lbn18225-ran10427-rbn549.in &
srun --exclusive --mem-per-cpu=1840 -n 2 -c 1 -N 1 lammps < data/in.melt/L80T0.9/lan355388-lbn9112-ran10702-rbn274.in &

wait
