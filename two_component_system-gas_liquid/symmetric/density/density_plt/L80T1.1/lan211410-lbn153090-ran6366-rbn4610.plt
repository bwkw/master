set term pdf
set out 'density/density_img/L80T1.1/lan211410-lbn153090-ran6366-rbn4610.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/density/L80T1.1/lan211410-lbn153090-ran6366-rbn4610.density' u 1:2 title '粒子A', 'density/density/L80T1.1/lan211410-lbn153090-ran6366-rbn4610.density' u 1:3 title '粒子B',
