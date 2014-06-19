### gnuplot-1.cmd -- Exemplo com gnuplot
### $Id: gnuplot-1.cmd,v 1.2 1998/11/29 03:29:57 jessen Exp $

# tipo de terminal
set terminal pslatex monochrome norotate

# arquivo de saida
set output 'gnuplot-1.tex'

#titulo
set title 'Usando figuras do \gnuplot{} no \LaTeX{}'

### funcoes
g(x) = cos(exp(x**2))

set xtics ('$-\frac{\pi}{2}$' -pi/2,\
           '$-\frac{\pi}{4}$' -pi/4,\
           '$0$' 0,\
           '$\frac{\pi}{4}$' pi/4,\
           '$\frac{\pi}{2}$' pi/2)

set ytics ('$-1$' -1,\
           '$-\frac{1}{2}$' -0.5,\
           '$0$' 0,\
           '$\frac{1}{2}$' 0.5,\
           '$1$' 1)

set samples 500

plot [-pi/2:pi/2] g(x) title '$\cos e^{x^2}$'

### gnuplot-1.cmd termina aqui.
