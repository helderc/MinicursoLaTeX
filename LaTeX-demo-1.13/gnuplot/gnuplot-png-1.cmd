### gnuplot-png-1.cmd -- Exemplo com gnuplot gerando PNG
### $Id: gnuplot-png-1.cmd,v 1.1 2001/01/04 03:05:42 jessen Exp $

# tipo de terminal
#set terminal pslatex monochrome norotate
set terminal png monochrome small

# arquivo de saida
set output 'gnuplot-1.png'

#titulo
#set title 'Usando figuras do \gnuplot{} no \LaTeX{}'
set title 'Usando figuras do gnuplot no LaTeX'

### funcoes
g(x) = cos(exp(x**2))

#set xtics ('$-\frac{\pi}{2}$' -pi/2,\
#           '$-\frac{\pi}{4}$' -pi/4,\
#           '$0$' 0,\
#           '$\frac{\pi}{4}$' pi/4,\
#           '$\frac{\pi}{2}$' pi/2)

#set ytics ('$-1$' -1,\
#           '$-\frac{1}{2}$' -0.5,\
#           '$0$' 0,\
#           '$\frac{1}{2}$' 0.5,\
#           '$1$' 1)

set samples 500

# diminui eixos x e y
set size 0.75, 0.75

plot [-pi/2:pi/2] g(x) title 'cos e^{x^2}'

### gnuplot-png-1.cmd termina aqui.
