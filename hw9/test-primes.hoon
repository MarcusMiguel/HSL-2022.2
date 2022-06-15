:: In %hw5 you produced a gate which calculated Euler primes.  Write a test suite for your arm.
::  It should test at least four different cases, one of which should be a failure to calculate (e.g. is there input it should crash on?). 
/+  *test, *primes
|% 
++  test-primes
  ;:  weld
  %+  expect-eq
    !>  [2 ~]
    !>  (primes 2)
  %+  expect-eq
    !>  [3 5 ~]
    !>  (primes 3)
  %+  expect-eq
    !>  [5 7 11 17 ~]
    !>  (primes 5)
  %-  expect-fail
    |.  (primes 0)
  ==
--