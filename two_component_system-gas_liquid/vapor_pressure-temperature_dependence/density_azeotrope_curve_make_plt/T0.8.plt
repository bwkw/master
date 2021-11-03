set term pdf
set out 'density_azeotrope_curve_img/T0.8.pdf'
set xlabel '{/Arial-Italic a-composition-ratio}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.0:1.0]
set tics font 'Arial,10'
set key font 'Arial,10'
set key right outside
set key spacing 1.4
plot 'density_azeotrope_curve_dat/T0.8.dat' u 1:2 title '粒子A', 'density_azeotrope_curve_dat/T0.8.dat' u 1:3 title '粒子B',
