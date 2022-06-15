:: For this step, write a gate in an arm `++fizzbuzz` which accepts a count and counts upward, outputting (using ~& sigpam) the number each time, 
:: `"fizz"` every third number, and `"buzz"` every fifth number until the count is reached.  (I.e., given 15, it should count from 1 to 15 with the output: 1 2 3 fizz 4 5 buzz 6 fizz 7 8 9 fizz 10 buzz 11 12 fizz 13 14 15 fizz buzz, but with line breaks between them.) 
:: Make sure that it outputs *both* "fizz" and "buzz" for numbers that are divisible by both three and five. *
|=  x=@ud
=<
(fizzbuzz x)
|%
++  fizzbuzz
  |=  n=@ud
  ^-  @ud
  =/  counter  1
  |-
    ?: 
      =((mod counter 5) 0)
      ~& 
        counter
        ~&
          'buzz'
          ?:
            =(counter n)
            counter
            %=  $
              counter  (add counter 1) 
            ==
      ?:
        =((mod counter 3) 0)
        ~& 
          counter
          ~& 
            'fizz'
            ?:
              =(counter n)
              counter
              %=  $
                counter  (add counter 1) 
              ==
        ~& 
          counter
          ?:
            =(counter n)
            counter
            %=  $
              counter  (add counter 1)
            ==
--


