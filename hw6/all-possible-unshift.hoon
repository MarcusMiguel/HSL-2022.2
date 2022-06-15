:: Build a gate that can take a Caesar-shifted tape and produce all possible unshifted tapes as a list of tapes. 
:: This should be performed using the original a-z only cipher. 
/=  caesar  /gen/caesar
|=  input=tape
=<
(all-possible-unshift input)
|%
++  all-possible-unshift
  |=  x=tape
  ^-  (list tape)
  =/  result  *(list tape)
  =/  unshifted  (call-caesar-cipher x)
  |-
    ?:  =(unshifted x)
      result
    %=  $
      unshifted  (call-caesar-cipher unshifted)
      result     (weld result `(list tape)`~[`tape`unshifted])
    ==
++  call-caesar-cipher 
  |=  x=tape
  ^-  tape
  `tape`+:(caesar [`tape`x 1])
--