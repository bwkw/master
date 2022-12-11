set term pdf
set out 'density/density_fitting_img/L100T1.0E1.05CD0.01/lan278176-lbn417263-lcn7025-ran7782-rbn11673-rcn197-for-c.pdf
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set xrange [0.2:0.8]
set tics font 'Arial,10'
set key font 'Arial,16'

plot 'density/density/L100T1.0E1.05CD0.01/lan278176-lbn417263-lcn7025-ran7782-rbn11673-rcn197.density' u 1:4 title 'density_c' with points pt 1
