:: Implement the piecewise triangle function.  Since we can't store expressions for future use yet, use 2 for the example input value (but pin it to a face `x`).
::      (x - 2)   if  2 < x <= 3
::      (4 - x)   if  3 < x <= 4
::       0        otherwise
:-  %say
|=  *
:-  %noun
=/  x  2  ?:  %-  gth  [x 2]  ?:  %-  lte  [x 3]  %-  sub  [x 2]  ?:  %-  gth  [x 3]  ?:  %-  lte  [x 4]  %-  sub  [4 x]  0  0  0