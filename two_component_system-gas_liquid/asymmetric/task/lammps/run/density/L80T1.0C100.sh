#!/bin/sh

#SBATCH -p F144cpu
#SBATCH -N 144
#SBATCH -n 18432
#SBATCH --mail-type=ALL
#SBATCH --mail-user=n.shota.1139@keio.jp

source /home/issp/materiapps/intel/lammps/lammpsvars.sh

srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.01.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.02.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.03.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.04.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.05.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.06.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.07.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.08.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.09.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.1.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.11.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.12.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.13.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.14.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.15.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.16.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.17.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.18.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.19.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.2.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.21.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.22.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.23.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.24.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.25.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.26.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.27.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.28.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.29.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.3.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.31.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.32.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.33.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.34.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.35.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.36.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.37.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.38.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.39.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.4.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.41.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.42.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.43.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.44.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.45.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.46.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.47.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.48.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.49.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.5.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.51.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.52.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.53.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.54.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.55.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.56.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.57.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.58.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.59.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.6.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.61.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.62.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.63.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.64.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.65.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.66.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.67.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.68.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.69.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.7.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.71.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.72.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.73.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.74.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.75.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.76.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.77.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.78.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.79.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.8.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.81.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.82.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.83.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.84.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.85.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.86.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.87.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.88.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.89.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.9.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.91.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.92.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.93.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.94.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.95.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.96.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.97.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.98.param &
srun --exclusive --mem-per-cpu=1840 -n 128 -c 1 -N 1 python3 generate_density.py < data/param/L80T1.0/C0.99.param &
wait
