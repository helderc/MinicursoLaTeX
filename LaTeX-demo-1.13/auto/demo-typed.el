(TeX-add-style-hook "demo-typed"
 (function
  (lambda ()
    (LaTeX-add-labels
     "sec:typed-text"
     "subsec:alltt"
     "subsec:verbframe"
     "subsec:verbfootnotes")
    (TeX-run-style-hooks
     "code/prog1"))))

