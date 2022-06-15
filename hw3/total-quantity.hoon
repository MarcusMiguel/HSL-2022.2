:: The lab needs to know the total quantity of reagent (in grams) you've been able to produce in the past week.  
:: Each day's total may be calculated by taking the day number times itself.  (E.g. on day three 3×3=9 grams were produced.  The reaction is reset every Monday.) 
::  Write a trap to add up the seven values. 
:-  %say
|=  *
:-  %noun
=/  counter  0
=/  total  0
|-
  ?:  =(counter 7)
    total
  %=  $
    total  (add (mul counter counter) total)
    counter  (add counter 1)
  ==