set term pdf
set out 'density_img/lna43904-lnb43904-lda0.686-ldb0.686-T0.903.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna43904-lnb43904-lda0.686-ldb0.686-T0.903.density' u 1:2 title '粒子A', 'density/lna43904-lnb43904-lda0.686-ldb0.686-T0.903.density' u 1:3 title '粒子B',
