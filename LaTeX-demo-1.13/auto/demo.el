(TeX-add-style-hook "demo"
 (function
  (lambda ()
    (LaTeX-add-environments
     '("Description" 1)
     '("Citation" 1)
     '("CITATION" 1)
     "squarebox"
     "codeverbatim"
     "exercicio"
     "theorem")
    (TeX-add-symbols
     '("termo" ["argument"] 1)
     '("temp" ["argument"] 1)
     '("example" ["argument"] 1)
     '("epigraph" 2)
     '("nucl" 3)
     '("unidade" 2)
     '("labelname" 1)
     '("environ" 1)
     '("envidx" 1)
     '("env" 1)
     '("countername" 1)
     '("counter" 1)
     '("lengthname" 1)
     '("length" 1)
     '("command" 1)
     '("comm" 1)
     '("package" 1)
     '("pack" 1)
     '("eng" 1)
     '("ordinal" 2)
     '("gnuplotinput" 1)
     "email"
     "dotuline"
     "dashuline"
     "listofcodename"
     "psf"
     "mdqon"
     "mdqoff"
     "gnuplot"
     "bs")
    (TeX-run-style-hooks
     "demo-package-fontes"))))

