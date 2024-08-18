 mpb 2Dlattice.ctl >& 2Dlattice.out
 h5topng -S 3 2Dlattice-epsilon.h5
 mpb-data -r -m 4 -n 200 2Dlattice-epsilon.h5 
 h5ls 2Dlattice-epsilon.h5
 h5topng 2Dlattice-epsilon.h5:data-new

 grep 'Gap' 2Dlattice.out -B10

#mpb-data -r -m 4 -n 100 2Dlattice-e.k07.b*.z.tm.h5
#h5topng -C 2Dlattice-epsilon.h5:data-new -c bluered -Z -d z.r-new 2Dlattice-e.k07.b*.z.tm.h5
