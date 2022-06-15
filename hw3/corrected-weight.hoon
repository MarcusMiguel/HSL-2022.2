:: You work in a lab.  The lab uses a scale which is inaccurate for values less than 10 grams.  Any weight less than that should simply register as zero in your measurements.  
:: Write a gate in an arm `++corrected-weight` which checks whether the value is less than 10 and returns zero if it is, otherwise returns the normal value. 
|=  n=@ud
=<
(corrected-weight n)
|%
++  corrected-weight
  |=  a=@ud
  ^-  @ud
  ?:  (lth a 10)
    0
  a
--
