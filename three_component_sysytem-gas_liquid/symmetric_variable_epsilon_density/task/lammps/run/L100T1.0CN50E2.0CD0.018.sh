#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan13796-lbn676024-lcn12644-ran386-rbn18912-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan27593-lbn662227-lcn12644-ran772-rbn18526-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan41389-lbn648431-lcn12644-ran1158-rbn18140-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan55186-lbn634634-lcn12644-ran1544-rbn17754-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan68982-lbn620838-lcn12644-ran1930-rbn17368-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan82778-lbn607042-lcn12644-ran2316-rbn16982-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan96575-lbn593245-lcn12644-ran2702-rbn16596-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan110371-lbn579449-lcn12644-ran3088-rbn16210-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan124168-lbn565652-lcn12644-ran3474-rbn15824-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan137964-lbn551856-lcn12644-ran3860-rbn15438-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan151760-lbn538060-lcn12644-ran4246-rbn15052-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan165557-lbn524263-lcn12644-ran4632-rbn14666-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan179353-lbn510467-lcn12644-ran5017-rbn14281-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan193150-lbn496670-lcn12644-ran5403-rbn13895-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan206946-lbn482874-lcn12644-ran5789-rbn13509-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan220742-lbn469078-lcn12644-ran6175-rbn13123-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan234539-lbn455281-lcn12644-ran6561-rbn12737-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan248335-lbn441485-lcn12644-ran6947-rbn12351-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan262132-lbn427688-lcn12644-ran7333-rbn11965-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan275928-lbn413892-lcn12644-ran7719-rbn11579-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan289724-lbn400096-lcn12644-ran8105-rbn11193-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan303521-lbn386299-lcn12644-ran8491-rbn10807-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan317317-lbn372503-lcn12644-ran8877-rbn10421-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan331114-lbn358706-lcn12644-ran9263-rbn10035-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan344910-lbn344910-lcn12644-ran9649-rbn9649-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan358706-lbn331114-lcn12644-ran10035-rbn9263-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan372503-lbn317317-lcn12644-ran10421-rbn8877-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan386299-lbn303521-lcn12644-ran10807-rbn8491-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan400096-lbn289724-lcn12644-ran11193-rbn8105-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan413892-lbn275928-lcn12644-ran11579-rbn7719-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan427688-lbn262132-lcn12644-ran11965-rbn7333-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan441485-lbn248335-lcn12644-ran12351-rbn6947-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan455281-lbn234539-lcn12644-ran12737-rbn6561-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan469078-lbn220742-lcn12644-ran13123-rbn6175-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan482874-lbn206946-lcn12644-ran13509-rbn5789-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan496670-lbn193150-lcn12644-ran13895-rbn5403-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan510467-lbn179353-lcn12644-ran14281-rbn5017-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan524263-lbn165557-lcn12644-ran14666-rbn4632-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan538060-lbn151760-lcn12644-ran15052-rbn4246-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan551856-lbn137964-lcn12644-ran15438-rbn3860-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan565652-lbn124168-lcn12644-ran15824-rbn3474-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan579449-lbn110371-lcn12644-ran16210-rbn3088-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan593245-lbn96575-lcn12644-ran16596-rbn2702-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan607042-lbn82778-lcn12644-ran16982-rbn2316-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan620838-lbn68982-lcn12644-ran17368-rbn1930-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan634634-lbn55186-lcn12644-ran17754-rbn1544-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan648431-lbn41389-lcn12644-ran18140-rbn1158-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan662227-lbn27593-lcn12644-ran18526-rbn772-rcn354.in &
srun --exclusive --mem-per-cpu=1840 -n 256 -c 1 -N 2 lammps < data/in.melt/L100T1.0E2.0CD0.018/lan676024-lbn13796-lcn12644-ran18912-rbn386-rcn354.in &
wait
