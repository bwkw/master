#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan13937-lbn682907-lcn5620-ran390-rbn19105-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan27874-lbn668970-lcn5620-ran780-rbn18715-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan41811-lbn655033-lcn5620-ran1170-rbn18325-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan55748-lbn641096-lcn5620-ran1560-rbn17935-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan69684-lbn627160-lcn5620-ran1950-rbn17545-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan83621-lbn613223-lcn5620-ran2339-rbn17156-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan97558-lbn599286-lcn5620-ran2729-rbn16766-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan111495-lbn585349-lcn5620-ran3119-rbn16376-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan125432-lbn571412-lcn5620-ran3509-rbn15986-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan139369-lbn557475-lcn5620-ran3899-rbn15596-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan153306-lbn543538-lcn5620-ran4289-rbn15206-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan167243-lbn529601-lcn5620-ran4679-rbn14816-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan181179-lbn515665-lcn5620-ran5069-rbn14426-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan195116-lbn501728-lcn5620-ran5459-rbn14036-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan209053-lbn487791-lcn5620-ran5848-rbn13647-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan222990-lbn473854-lcn5620-ran6238-rbn13257-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan236927-lbn459917-lcn5620-ran6628-rbn12867-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan250864-lbn445980-lcn5620-ran7018-rbn12477-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan264801-lbn432043-lcn5620-ran7408-rbn12087-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan278738-lbn418106-lcn5620-ran7798-rbn11697-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan292674-lbn404170-lcn5620-ran8188-rbn11307-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan306611-lbn390233-lcn5620-ran8578-rbn10917-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan320548-lbn376296-lcn5620-ran8968-rbn10527-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan334485-lbn362359-lcn5620-ran9358-rbn10137-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan348422-lbn348422-lcn5620-ran9748-rbn9747-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan362359-lbn334485-lcn5620-ran10137-rbn9358-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan376296-lbn320548-lcn5620-ran10527-rbn8968-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan390233-lbn306611-lcn5620-ran10917-rbn8578-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan404170-lbn292674-lcn5620-ran11307-rbn8188-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan418106-lbn278738-lcn5620-ran11697-rbn7798-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan432043-lbn264801-lcn5620-ran12087-rbn7408-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan445980-lbn250864-lcn5620-ran12477-rbn7018-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan459917-lbn236927-lcn5620-ran12867-rbn6628-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan473854-lbn222990-lcn5620-ran13257-rbn6238-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan487791-lbn209053-lcn5620-ran13646-rbn5849-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan501728-lbn195116-lcn5620-ran14036-rbn5459-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan515665-lbn181179-lcn5620-ran14426-rbn5069-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan529601-lbn167243-lcn5620-ran14816-rbn4679-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan543538-lbn153306-lcn5620-ran15206-rbn4289-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan557475-lbn139369-lcn5620-ran15596-rbn3899-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan571412-lbn125432-lcn5620-ran15986-rbn3509-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan585349-lbn111495-lcn5620-ran16376-rbn3119-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan599286-lbn97558-lcn5620-ran16766-rbn2729-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan613223-lbn83621-lcn5620-ran17156-rbn2339-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan627160-lbn69684-lcn5620-ran17546-rbn1949-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan641096-lbn55748-lcn5620-ran17935-rbn1560-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan655033-lbn41811-lcn5620-ran18325-rbn1170-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan668970-lbn27874-lcn5620-ran18715-rbn780-rcn157.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.008/lan682907-lbn13937-lcn5620-ran19105-rbn390-rcn157.in &
wait
