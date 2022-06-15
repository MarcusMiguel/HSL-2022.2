:: Write a generator which accepts the value of a planet as a `@p` and returns the next neighbor and the previous neighbor as a *cell* of two `@p`s.  
:: The previous neighbor of a planet is calculated by decrementing the numeric value of the planet's address by one.  You will then need to convert it from `@ud` back to `@p`.  
:: (You don't need to filter for planet input or anything, just for `@p`.)  For instance, the previous neighbor of ~sampel-palnet is ~datwyn-lavrud. 
|=  x=@p  [`@p`(sub `@ud`x 1) `@p`(add `@ud`x 1)]