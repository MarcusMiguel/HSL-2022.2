:: Write a gate in an arm `++fizzbuzz` which accepts a count and counts upward, appending the value OR the appropriate message to a list, which is returned at the end.  
:: Include the number unless one of the following conditions holds:  `"fizz"` should replace every third number, and `"buzz"` every fifth number until the count is reached. 
:: (I.e., given 15, it should count from 1 to 15 with the return list: `~[1 2 "fizz" 4 "buzz" "fizz" 7 8 "fizz" "buzz" 11 "fizz" 13 14 "fizzbuzz"]`.)  Make sure that it outputs *both* "fizz" and "buzz" for numbers that are divisible by both three and five.
::  (This hews to canonical FizzBuzz behavior, note the slight difference from %hw3's version.) 
|=  n=@ud
=/  counter  1
=/  result  *(list ?(@ud tape))
|-
  ?:  =(counter +(n))
    result
  ?:  =((mod counter 5) 0)
    ?:  =((mod counter 3) 0)
      %=  $
        counter  +(counter)
        result   (weld result `(list ?(@ud tape))`~["fizzbuzz"])
      ==
    %=  $
      counter  +(counter)
      result   (weld result `(list ?(@ud tape))`~["buzz"])
      ==
  ?:  =((mod counter 3) 0)
    %=  $
      counter  +(counter)
      result   (weld result `(list ?(@ud tape))`~["fizz"])
      ==
  %=  $
    counter  +(counter)
    result   (weld result `(list ?(@ud tape))`~[counter])
    ==