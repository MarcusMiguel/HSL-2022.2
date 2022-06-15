:: A prime number is a number which is only divisible by itself and one (it has no factors), such as 2, 3, 5, 7, and 11.
::  Write a gate named ++primes which produces the Euler primes as a list.  The Euler primes are given by k²-k+n (for k = 1 to n-1). 
:: (Note:  Your program will produce a set of primes if given one of "Euler's lucky numbers": 1, 2, 3, 5, 11, 17, or 41.)
|=  input=@ud
=<
(primes input)
|%
++  primes
  |=  n=@ud
  =/  k  1
  =/  numbers  *(list @ud)
  ?:  =(=(n 41) =(=(n 17) =(=(n 11) =(=(n 5) =(=(n 3) =(n 2))))))
    'Invalid number!'
  |-
    ?:  =(k n)
      numbers
    %=  $
      numbers  (weld numbers `(list @ud)`~[(add (sub (mul k k) k) n)])
      k        +(k)
      ==
--