#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan13853-lbn678777-lcn9834-ran388-rbn18989-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan27705-lbn664925-lcn9834-ran775-rbn18602-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan41558-lbn651072-lcn9834-ran1163-rbn18214-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan55410-lbn637220-lcn9834-ran1550-rbn17827-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan69263-lbn623367-lcn9834-ran1938-rbn17439-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan83116-lbn609514-lcn9834-ran2325-rbn17052-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan96968-lbn595662-lcn9834-ran2713-rbn16664-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan110821-lbn581809-lcn9834-ran3100-rbn16277-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan124673-lbn567957-lcn9834-ran3488-rbn15889-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan138526-lbn554104-lcn9834-ran3875-rbn15502-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan152379-lbn540251-lcn9834-ran4263-rbn15114-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan166231-lbn526399-lcn9834-ran4650-rbn14727-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan180084-lbn512546-lcn9834-ran5038-rbn14339-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan193936-lbn498694-lcn9834-ran5426-rbn13951-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan207789-lbn484841-lcn9834-ran5813-rbn13564-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan221642-lbn470988-lcn9834-ran6201-rbn13176-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan235494-lbn457136-lcn9834-ran6588-rbn12789-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan249347-lbn443283-lcn9834-ran6976-rbn12401-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan263199-lbn429431-lcn9834-ran7363-rbn12014-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan277052-lbn415578-lcn9834-ran7751-rbn11626-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan290905-lbn401725-lcn9834-ran8138-rbn11239-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan304757-lbn387873-lcn9834-ran8526-rbn10851-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan318610-lbn374020-lcn9834-ran8913-rbn10464-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan332462-lbn360168-lcn9834-ran9301-rbn10076-rcn275.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan346315-lbn346315-lcn9834-ran9688-rbn9689-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan360168-lbn332462-lcn9834-ran10076-rbn9301-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan374020-lbn318610-lcn9834-ran10464-rbn8913-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan387873-lbn304757-lcn9834-ran10851-rbn8526-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan401725-lbn290905-lcn9834-ran11239-rbn8138-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan415578-lbn277052-lcn9834-ran11626-rbn7751-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan429431-lbn263199-lcn9834-ran12014-rbn7363-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan443283-lbn249347-lcn9834-ran12401-rbn6976-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan457136-lbn235494-lcn9834-ran12789-rbn6588-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan470988-lbn221642-lcn9834-ran13176-rbn6201-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan484841-lbn207789-lcn9834-ran13564-rbn5813-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan498694-lbn193936-lcn9834-ran13951-rbn5426-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan512546-lbn180084-lcn9834-ran14339-rbn5038-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan526399-lbn166231-lcn9834-ran14727-rbn4650-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan540251-lbn152379-lcn9834-ran15114-rbn4263-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan554104-lbn138526-lcn9834-ran15502-rbn3875-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan567957-lbn124673-lcn9834-ran15889-rbn3488-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan581809-lbn110821-lcn9834-ran16277-rbn3100-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan595662-lbn96968-lcn9834-ran16664-rbn2713-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan609514-lbn83116-lcn9834-ran17052-rbn2325-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan623367-lbn69263-lcn9834-ran17439-rbn1938-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan637220-lbn55410-lcn9834-ran17827-rbn1550-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan651072-lbn41558-lcn9834-ran18214-rbn1163-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan664925-lbn27705-lcn9834-ran18602-rbn775-rcn275.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.014/lan678777-lbn13853-lcn9834-ran18989-rbn388-rcn275.in &
wait
