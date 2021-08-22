set term pdf
set out 'density_img/ln4000-rn4000-ld0.5-rd0.5-T0.95.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/ln4000-rn4000-ld0.5-rd0.5-T0.95.density' u 1:2 title '粒子A', 'density/ln4000-rn4000-ld0.5-rd0.5-T0.95.density' u 1:3 title '粒子B',
