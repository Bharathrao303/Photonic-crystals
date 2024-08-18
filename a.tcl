grep tefreqs line_defect.out > line_defect_te.dat
grep tmfreqs line_defect.out > line_defect_tm.dat
awk '{print $2 " " $7 " " $8 " " $9 " " $10 " " $11 " " $12 " " $13 " " $14 " " $15}' line_defect_te.dat > line_defect_te_sorted.dat
awk '{print $2 " " $7 " " $8 " " $9 " " $10 " " $11 " " $12 " " $13 " " $14 " " $15}' line_defect_tm.dat > line_defect_tm_sorted.dat
gnuplot plot_script.gp 


