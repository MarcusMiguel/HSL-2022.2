:: In the lesson, there was an exercise to produce a library and a generator which counted the number of words in a given tape.
:: The library should consist of a `|%` barcen rune including a `++split-tape` arm and a `++count-elements` arm.  Submit the library as your answer here.
|%
++  split-tape
  |=  x=(list @t)
  =/  index  0
  =/  result  *(list tape)
  |- 
    ?:  =(index (lent x))
      `(list tape)`(weld result ~[`tape`x])
    ?:  =((snag index x) ' ')
      %=  $
        index   0
        result  (weld result ~[`tape`(scag index x)])
        x       (slag +(index) x)
      ==
    $(index +(index))
++  count-elements
  |=  x=(list tape)
  (lent x)
--