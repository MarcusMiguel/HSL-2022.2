:: Write a door (named calc if used in Dojo) that takes a @ud sample.   It should have four arms to handle multiplication, subtraction, addition, and division against this value. 
:: For instance, you should be able to build an addition gate with `~(add calc 3)` and use it with `(~(add calc 3) 5)` to result in 8.
:: Usage example:
::       (~(newadd calc 3) 5)
::
:-  %say
|=  *
:-  %noun
|_  a=@ud
++  newadd
  |=  b=@ud
  (add a b)
++  newsub
  |=  b=@ud
  (sub a b)
++  newmul
  |=  b=@ud
  (mul a b)
++  newdiv
  |=  b=@ud
  (div a b)
--
