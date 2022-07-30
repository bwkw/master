#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan13965-lbn684284-lcn4215-ran391-rbn19143-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan27930-lbn670319-lcn4215-ran781-rbn18753-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan41895-lbn656354-lcn4215-ran1172-rbn18362-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan55860-lbn642389-lcn4215-ran1563-rbn17971-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan69825-lbn628424-lcn4215-ran1953-rbn17581-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan83790-lbn614459-lcn4215-ran2344-rbn17190-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan97755-lbn600494-lcn4215-ran2735-rbn16799-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan111720-lbn586529-lcn4215-ran3125-rbn16409-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan125685-lbn572564-lcn4215-ran3516-rbn16018-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan139650-lbn558599-lcn4215-ran3907-rbn15627-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan153615-lbn544634-lcn4215-ran4297-rbn15237-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan167580-lbn530669-lcn4215-ran4688-rbn14846-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan181545-lbn516704-lcn4215-ran5079-rbn14455-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan195510-lbn502739-lcn4215-ran5470-rbn14064-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan209475-lbn488774-lcn4215-ran5860-rbn13674-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan223440-lbn474809-lcn4215-ran6251-rbn13283-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan237405-lbn460844-lcn4215-ran6642-rbn12892-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan251370-lbn446879-lcn4215-ran7032-rbn12502-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan265335-lbn432914-lcn4215-ran7423-rbn12111-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan279300-lbn418949-lcn4215-ran7814-rbn11720-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan293265-lbn404984-lcn4215-ran8204-rbn11330-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan307230-lbn391019-lcn4215-ran8595-rbn10939-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan321195-lbn377054-lcn4215-ran8986-rbn10548-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan335160-lbn363089-lcn4215-ran9376-rbn10158-rcn118.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan349124-lbn349125-lcn4215-ran9767-rbn9767-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan363089-lbn335160-lcn4215-ran10158-rbn9376-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan377054-lbn321195-lcn4215-ran10548-rbn8986-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan391019-lbn307230-lcn4215-ran10939-rbn8595-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan404984-lbn293265-lcn4215-ran11330-rbn8204-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan418949-lbn279300-lcn4215-ran11720-rbn7814-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan432914-lbn265335-lcn4215-ran12111-rbn7423-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan446879-lbn251370-lcn4215-ran12502-rbn7032-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan460844-lbn237405-lcn4215-ran12892-rbn6642-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan474809-lbn223440-lcn4215-ran13283-rbn6251-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan488774-lbn209475-lcn4215-ran13674-rbn5860-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan502739-lbn195510-lcn4215-ran14064-rbn5470-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan516704-lbn181545-lcn4215-ran14455-rbn5079-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan530669-lbn167580-lcn4215-ran14846-rbn4688-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan544634-lbn153615-lcn4215-ran15237-rbn4297-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan558599-lbn139650-lcn4215-ran15627-rbn3907-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan572564-lbn125685-lcn4215-ran16018-rbn3516-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan586529-lbn111720-lcn4215-ran16409-rbn3125-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan600494-lbn97755-lcn4215-ran16799-rbn2735-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan614459-lbn83790-lcn4215-ran17190-rbn2344-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan628424-lbn69825-lcn4215-ran17581-rbn1953-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan642389-lbn55860-lcn4215-ran17971-rbn1563-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan656354-lbn41895-lcn4215-ran18362-rbn1172-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan670319-lbn27930-lcn4215-ran18753-rbn781-rcn118.in &
# srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.006/lan684284-lbn13965-lcn4215-ran19143-rbn391-rcn118.in &
wait
