:: FizzBuzz is a classic computer science challenge question.  For this step, write a gate in an arm `++fizz` which accepts a count and counts upward, outputting (using ~& sigpam) the number each time and `"fizz"` every third number until the count is reached.
:: (I.e., given 7, it should count from 1 to 7 and output "fizz" at 3 and 6.)
|=  x=@ud
=<
(fizz x)
|%
++  fizz
  |=  n=@ud
  ^-  @ud
  =/  counter  1
  |-
    ?: 
      =((mod counter 3) 0)
      ~&
        [counter 'fizz']
        ?:
          =(counter n)
          counter
          %=  $
            counter  (add counter 1) 
          ==
       ~& 
         [counter]
         ?:
           =(counter n)
           counter
           %=  $
             counter  (add counter 1)
           ==
--