### gnuplot-png-2.cmd -- Exemplo com gnuplot gerando PNG
### $Id: gnuplot-png-2.cmd,v 1.1 2001/01/04 03:05:42 jessen Exp $

# tipo de terminal
#set terminal pslatex monochrome norotate
set terminal png monochrome small

# a opcao rotate coloca ylabel na vertical
#set terminal pslatex monochrome rotate

# arquivo de saida
set output 'gnuplot-2.png'

#titulo
set title 'Crescimento de hosts na Internet de 1989--1997'

# diminui eixos x e y
set size 0.75, 0.50

### legenda nos eixos x e y
#set ylabel "hosts \\ ($10^6)$"
set ylabel "hosts (10^6)"
set xlabel 'Ano'

plot 'hosts.dat' thru x/1000000 title 'hosts' with linespoints

### gnuplot-png-2.cmd ends here.
