### gnuplot-3.cmd -- Exemplo com gnuplot
### $Id: gnuplot-3.cmd,v 1.2 1998/11/29 03:31:03 jessen Exp $

# tipo de terminal
#set terminal postscript eps monochrome dashed "Courrier" 12
#set terminal postscript eps monochrome solid "Helvetica" 20
set terminal pslatex monochrome

# arquivo de saida
set output 'gnuplot-3.tex'

#titulo
set title 'Bivariate Normal Density'
set xlabel 'x'
set ylabel 'y'

#set size 2,2

### default e' 100 pontos
set samples 100,100

set nosurface
set contour surface
set cntrparam levels incremental 0,.1,.4

# funcao
f(x,y)=exp(-.5*(x**2+y**2))/(2*pi)
splot [-4:4] [-4:4] f(x,y)

### gnuplot-3.cmd ends here.
