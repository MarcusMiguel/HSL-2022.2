:: Look up ++sub in hoon,hoon.  Rewrite the arm so that it 1) omits the ~/ and ~_ lines and 2) uses ?. instead of ?:.
:: (You may also remove the comment lines ::.) 
|=  input=[a=@ b=@]
=<
(sub input)
|%
++  sub
    |=  [a=@ b=@]
    ^-  @
    ?.  =(0 b)  
      $(a (dec a), b (dec b))
    a
--