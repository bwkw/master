set term pdf
set out 'density/density_img/L80T0.9/lan164025-lbn200475-ran4939-rbn6037.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/density/L80T0.9/lan164025-lbn200475-ran4939-rbn6037.density' u 1:2 title '粒子A', 'density/density/L80T0.9/lan164025-lbn200475-ran4939-rbn6037.density' u 1:3 title '粒子B',
