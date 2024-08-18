set terminal png size 800,600
set output 'band_structure.png'
set title 'Band Structure'
set xlabel 'k index'
set ylabel 'Frequency (c/a)'
set xrange [0:16]
set yrange [0:1]
set xtics 1
set grid

# Define colors for TE and TM bands
set style line 1 lc rgb 'red' lw 2 # TE bands in red
set style line 2 lc rgb 'blue' lw 2 # TM bands in blue

plot '2Dlattice_te_sorted.dat' using 1:2 with linespoints title 'TE band 1' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:3 with linespoints title 'TE band 2' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:4 with linespoints title 'TE band 3' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:5 with linespoints title 'TE band 4' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:6 with linespoints title 'TE band 5' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:7 with linespoints title 'TE band 6' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:8 with linespoints title 'TE band 7' ls 1,\
	'2Dlattice_te_sorted.dat' using 1:9 with linespoints title 'TE band 8' ls 1,\
        '2Dlattice_tm_sorted.dat' using 1:2 with linespoints title 'TM band 1' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:3 with linespoints title 'TM band 2' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:4 with linespoints title 'TM band 3' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:5 with linespoints title 'TM band 4' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:6 with linespoints title 'TM band 5' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:7 with linespoints title 'TM band 6' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:8 with linespoints title 'TM band 7' ls 2,\
	'2Dlattice_tm_sorted.dat' using 1:9 with linespoints title 'TM band 8' ls 2
