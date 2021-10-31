set term pdf
set out 'density_img/lna25555-lnb17037-lda0.399296875-ldb0.266203125-T0.9.pdf'
set xlabel '{/Arial-Italic x}'
set ylabel '{/Arial-Italic density}'
set xlabel font 'Arial,15'
set ylabel font 'Arial,15'
set tics font 'Arial,10'
set key font 'Arial,16'
plot 'density/lna25555-lnb17037-lda0.399296875-ldb0.266203125-T0.9.density' u 1:2 title '粒子A', 'density/lna25555-lnb17037-lda0.399296875-ldb0.266203125-T0.9.density' u 1:3 title '粒子B',