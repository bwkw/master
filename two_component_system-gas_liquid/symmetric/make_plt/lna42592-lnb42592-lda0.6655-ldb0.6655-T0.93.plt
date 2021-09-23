set term pdf
set out 'density_img/lna42592-lnb42592-lda0.6655-ldb0.6655-T0.93.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna42592-lnb42592-lda0.6655-ldb0.6655-T0.93.density' u 1:2 title '粒子A', 'density/lna42592-lnb42592-lda0.6655-ldb0.6655-T0.93.density' u 1:3 title '粒子B',
