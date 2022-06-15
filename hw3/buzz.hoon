:: For this step, write a gate in an arm `++buzz` which accepts a count and counts upward, outputting (using ~& sigpam) the number each time and `"buzz"` every fifth number until the count is reached. 
:: (I.e., given 7, it should count from 1 to 7 and output "buzz" at 5.)
|=  x=@ud
=<
(buzz x)
|%
++  buzz
  |=  n=@ud
  ^-  @ud
  =/  counter  1
  |-
    ?: 
      =((mod counter 5) 0)
      ~&
        [counter 'buzz']
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

