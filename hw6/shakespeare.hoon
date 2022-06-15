:: Produce a Hoon expression which makes a map which has Shakespeare characters as keys and the corresponding play as the value. 
:: (This does not need to be a jar; you can just include one play for characters that recur in multiple plays.)  
:: You may use ++my or ++put:by or another means to construct the map.  Make sure it has at least four elements. 
:-  %say
|=  *
:-  %noun
(my ~[['Cleopatra' 'Antony and Cleopatra'] ['Romeo' 'Juliet'] ['Troilus' 'Troilus and Cressida'] ['Marcus Brutus' 'Julius Caesar']])