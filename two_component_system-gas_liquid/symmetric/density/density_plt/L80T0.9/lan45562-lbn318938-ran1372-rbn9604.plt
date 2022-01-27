set term pdf
set out 'density/density_img/L80T0.9/lan45562-lbn318938-ran1372-rbn9604.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/density/L80T0.9/lan45562-lbn318938-ran1372-rbn9604.density' u 1:2 title '粒子A', 'density/density/L80T0.9/lan45562-lbn318938-ran1372-rbn9604.density' u 1:3 title '粒子B',
