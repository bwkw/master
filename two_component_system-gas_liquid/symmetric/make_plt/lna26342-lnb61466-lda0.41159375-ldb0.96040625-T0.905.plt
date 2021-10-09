set term pdf
set out 'density_img/lna26342-lnb61466-lda0.41159375-ldb0.96040625-T0.905.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna26342-lnb61466-lda0.41159375-ldb0.96040625-T0.905.density' u 1:2 title '粒子A', 'density/lna26342-lnb61466-lda0.41159375-ldb0.96040625-T0.905.density' u 1:3 title '粒子B',
