:: Implement the piecewise boxcar function.  Since we can't store expressions for future use yet, use 4 for the example input value (but pin it to a face `x`).
::      1  if  3 < x <= 5
::      0  otherwise
=/  x  4  ?:  %-  gth  [x 3]  ?:  %-  lte  [x 5]  1  0  0
