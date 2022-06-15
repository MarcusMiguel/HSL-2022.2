:: Recall the calculator problem from %hw2.  Convert it to use a |% barcen core for the operations (e.g. `++add-num`) with either a `=<` tisgal or `=>` tisgar. 
:: Produce a generator which accepts two numbers and an operation, such as `+calc [5 4 %mul]` and yields `20`. 
|=  [x=@uds y=@uds z=@tas]
=<
(calc x y z)
|%
++  calc
  |=  [a=@uds b=@uds c=@tas]
  ^-  ?(@uds @uds c=@tas)
  ?:  =(%add c)  
    (add a b)
  ?:  =(%sub c)
    (sub a b)
  ?:  =(%mul c)
    (mul a b)
  ?:  =(%div c)
    (div a b)
  'invalid operation'
--