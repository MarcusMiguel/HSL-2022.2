:: Write a gate named ++decrement that implements decrement without using the standard library functions of ++sub or ++dec. 
:: (Hint:  Count up to one less than the input value using recursion).
|=  input=@ud
=<
(decrement input)
|%
++  decrement
  |=  x=@ud
  =/  counter  0
  |-  
    ?:  =(+(counter) x)
      counter
    %=  $
      counter  +(counter)
      ==
--