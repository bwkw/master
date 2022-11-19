#!/bin/sh

#SBATCH -p B144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan14021-lbn687038-lcn1405-ran392-rbn19221-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan28042-lbn673017-lcn1405-ran785-rbn18828-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan42064-lbn658995-lcn1405-ran1177-rbn18436-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan56085-lbn644974-lcn1405-ran1569-rbn18044-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan70106-lbn630953-lcn1405-ran1961-rbn17652-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan84127-lbn616932-lcn1405-ran2354-rbn17259-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan98148-lbn602911-lcn1405-ran2746-rbn16867-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan112169-lbn588890-lcn1405-ran3138-rbn16475-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan126191-lbn574868-lcn1405-ran3530-rbn16083-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan140212-lbn560847-lcn1405-ran3923-rbn15690-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan154233-lbn546826-lcn1405-ran4315-rbn15298-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan168254-lbn532805-lcn1405-ran4707-rbn14906-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan182275-lbn518784-lcn1405-ran5099-rbn14514-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan196297-lbn504762-lcn1405-ran5492-rbn14121-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan210318-lbn490741-lcn1405-ran5884-rbn13729-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan224339-lbn476720-lcn1405-ran6276-rbn13337-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan238360-lbn462699-lcn1405-ran6668-rbn12945-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan252381-lbn448678-lcn1405-ran7061-rbn12552-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan266402-lbn434657-lcn1405-ran7453-rbn12160-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan280424-lbn420635-lcn1405-ran7845-rbn11768-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan294445-lbn406614-lcn1405-ran8237-rbn11376-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan308466-lbn392593-lcn1405-ran8630-rbn10983-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan322487-lbn378572-lcn1405-ran9022-rbn10591-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan336508-lbn364551-lcn1405-ran9414-rbn10199-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan350530-lbn350529-lcn1405-ran9806-rbn9807-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan364551-lbn336508-lcn1405-ran10199-rbn9414-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan378572-lbn322487-lcn1405-ran10591-rbn9022-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan392593-lbn308466-lcn1405-ran10983-rbn8630-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan406614-lbn294445-lcn1405-ran11376-rbn8237-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan420635-lbn280424-lcn1405-ran11768-rbn7845-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan434657-lbn266402-lcn1405-ran12160-rbn7453-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan448678-lbn252381-lcn1405-ran12552-rbn7061-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan462699-lbn238360-lcn1405-ran12945-rbn6668-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan476720-lbn224339-lcn1405-ran13337-rbn6276-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan490741-lbn210318-lcn1405-ran13729-rbn5884-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan504762-lbn196297-lcn1405-ran14121-rbn5492-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan518784-lbn182275-lcn1405-ran14514-rbn5099-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan532805-lbn168254-lcn1405-ran14906-rbn4707-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan546826-lbn154233-lcn1405-ran15298-rbn4315-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan560847-lbn140212-lcn1405-ran15690-rbn3923-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan574868-lbn126191-lcn1405-ran16083-rbn3530-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan588890-lbn112169-lcn1405-ran16475-rbn3138-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan602911-lbn98148-lcn1405-ran16867-rbn2746-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan616932-lbn84127-lcn1405-ran17259-rbn2354-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan630953-lbn70106-lcn1405-ran17652-rbn1961-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan644974-lbn56085-lcn1405-ran18044-rbn1569-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan658995-lbn42064-lcn1405-ran18436-rbn1177-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan673017-lbn28042-lcn1405-ran18828-rbn785-rcn39.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E1.05CD0.002/lan687038-lbn14021-lcn1405-ran19221-rbn392-rcn39.in &
wait
