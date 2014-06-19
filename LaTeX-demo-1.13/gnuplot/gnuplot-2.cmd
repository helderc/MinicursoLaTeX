### gnuplot-2.cmd -- Exemplo com gnuplot
### $Id: gnuplot-2.cmd,v 1.3 2001/01/04 03:09:24 jessen Exp $

# tipo de terminal
set terminal pslatex monochrome norotate

# a opcao rotate coloca ylabel na vertical
#set terminal pslatex monochrome rotate

# arquivo de saida
set output 'gnuplot-2.tex'

#titulo
set title 'Crescimento de hosts na Internet de 1989--1997'

# Mantem eixo x, diminui eixo y
set size 1, 0.75

### legenda nos eixos x e y
set ylabel 'hosts\\$(10^6)$' -1
set xlabel 'Ano'

plot 'hosts.dat' thru x/1000000 title 'hosts' with linespoints

### gnuplot-2.cmd ends here.
