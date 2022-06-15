:: Take your code for the boxcar function in the previous homework.  Produce a gate which works for any input value `x`.
::      1  if  3 < x <= 5
::      0  otherwise
|=  x=@ud  ?:   %-  gth   [x 3]  ?:  %-  lte  [x 5]  1  0  0