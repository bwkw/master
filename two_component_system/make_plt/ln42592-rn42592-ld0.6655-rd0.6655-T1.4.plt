set term pdf
set out 'density_img/ln42592-rn42592-ld0.6655-rd0.6655-T1.4.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set nokey
plot 'density/ln42592-rn42592-ld0.6655-rd0.6655-T1.4.density' u 1:2, 'density/ln42592-rn42592-ld0.6655-rd0.6655-T1.4.density' u 1:3,
