:: The lab needs to know the total quantity of reagent (in grams) you've been able to produce in the past week.  
:: You have the totals for every day.  Write a gate in an arm `++weekly-reagent` which uses a trap to add up the seven values it receives in a 7-element list. 
:: E.g., `~[134 287 12 0 127 194 0]` should sum to 754.  
|=  x=(list @ud)
    =/  counter  0
    =/  total  0
    |-
    ?:  =(counter 7)
        total
        %=  $
        total  (add (snag counter ((list @) x)) total)
        counter  (add counter 1)
    ==