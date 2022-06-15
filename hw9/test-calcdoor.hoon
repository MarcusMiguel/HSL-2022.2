:: In %hw5 you produced a door which carried out calculator arithmetic functions  Write a test suite for your door. 
:: It should test at least three different cases for each arm.  You should check for failure to compute with subtraction underflow (i.e. 5-7).
/+  *test, calcdoor
|% 
++  test-calc
  ;:  weld
  %+  expect-eq
    !>  8
    !>  (~(newadd calcdoor 3) 5)
  %+  expect-eq
    !>  2
    !>  (~(newadd calcdoor 1) 1)
  %+  expect-eq
    !>  0
    !>  (~(newadd calcdoor 0) 0)
  %+  expect-eq
    !>  0
    !>  (~(newsub calcdoor 0) 0)
  %+  expect-eq
    !>  10
    !>  (~(newsub calcdoor 20) 10)
  %-  expect-fail
    |.  (~(newsub calcdoor 5) 7)
  %+  expect-eq
    !>  0
    !>  (~(newmul calcdoor 10) 0)
  %+  expect-eq
    !>  1
    !>  (~(newmul calcdoor 1) 1)
  %+  expect-eq
    !>  100
    !>  (~(newmul calcdoor 10) 10)
  %+  expect-eq
    !>  2
    !>  (~(newdiv calcdoor 20) 10)
  %+  expect-eq
    !>  5
    !>  (~(newdiv calcdoor 25) 5)
  %-  expect-fail
    |.  (~(newdiv calcdoor 5) 0)
  ==
--
