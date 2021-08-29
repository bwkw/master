set term pdf
set out 'density_img/ln5324-rn5324-ld0.6655-rd0.6655-T1.0.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/ln5324-rn5324-ld0.6655-rd0.6655-T1.0.density' u 1:2 title '粒子A', 'density/ln5324-rn5324-ld0.6655-rd0.6655-T1.0.density' u 1:3 title '粒子B',
