(TeX-add-style-hook "demo-graphics"
 (function
  (lambda ()
    (LaTeX-add-labels
     "fig:gnu"
     "fig:platypus"
     "fig:tux"
     "fig:gnu-rotated"
     "fig:gnu-reflected"
     "fig:gnu-scale"
     "sec:fig-syde-by-side"
     "fig:esq"
     "fig:dir"
     "subsec:subfigure"
     "fig:gnu-1"
     "fig:gnu-2"
     "fig:gnu-3"
     "fig:3gnus"
     "subsec:wrapfig"
     "fig:wrapgnu"
     "fig:gnu-aumento-borda"
     "fig:gnuplot-example-1"
     "fig:gnuplot-example-2"
     "fig:pendnofrag"
     "fig:pendfrag"
     "fig:pendscale"
     "fig:pendnoscale")
    (TeX-run-style-hooks
     "gnuplot-1"))))

