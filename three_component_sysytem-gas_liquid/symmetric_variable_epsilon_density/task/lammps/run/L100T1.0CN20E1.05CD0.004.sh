#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 80
#SBATCH -n 10240
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan34983-lbn664671-lcn2810-ran979-rbn18594-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan69965-lbn629689-lcn2810-ran1957-rbn17616-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan104948-lbn594706-lcn2810-ran2936-rbn16637-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan139931-lbn559723-lcn2810-ran3915-rbn15658-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan174914-lbn524740-lcn2810-ran4893-rbn14680-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan209896-lbn489758-lcn2810-ran5872-rbn13701-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan244879-lbn454775-lcn2810-ran6851-rbn12722-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan279862-lbn419792-lcn2810-ran7829-rbn11744-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan314844-lbn384810-lcn2810-ran8808-rbn10765-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan349827-lbn349827-lcn2810-ran9786-rbn9787-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan384810-lbn314844-lcn2810-ran10765-rbn8808-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan419792-lbn279862-lcn2810-ran11744-rbn7829-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan454775-lbn244879-lcn2810-ran12722-rbn6851-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan489758-lbn209896-lcn2810-ran13701-rbn5872-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan524740-lbn174914-lcn2810-ran14680-rbn4893-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan559723-lbn139931-lcn2810-ran15658-rbn3915-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan594706-lbn104948-lcn2810-ran16637-rbn2936-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan629689-lbn69965-lcn2810-ran17616-rbn1957-rcn79.in &
srun --exclusive --mem-per-cpu=1840 -n 512 -c 1 -N 4 lammps < data/in.melt/L100T1.0E1.05CD0.004/lan664671-lbn34983-lcn2810-ran18594-rbn979-rcn79.in &
wait
