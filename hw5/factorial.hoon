:: Write a gate named ++factorial which calculates the factorial of a value.  Make its default sample value for the input be 1 using either `$_` or `|:`. 
::  Make sure that 0! results in the value 1.
|=  input=@ud
=<
(factorial input)
|%
++  factorial
  |=  n=_1
  ?:  =(n 0)
    1
  (roll (gulf 1 n) mul)
--