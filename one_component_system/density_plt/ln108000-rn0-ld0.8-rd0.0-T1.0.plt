set term pdf
set out 'density_img/ln108000-rn0-ld0.8-rd0-T1.0.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set nokey
plot 'density/ln108000-rn0-ld0.8-rd0.0-T1.0.density' u 1:2
