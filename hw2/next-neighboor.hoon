:: Write a generator which accepts the value of a planet as a `@p` and returns the next neighbor, also as a `@p`. 
:: The next neighbor of a planet is calculated by incrementing the numeric value of the planet's address by one.  You will then need to convert it from `@ud` back to `@p`.  
:: (You don't need to filter for planet input or anything, just for `@p`.)  For instance, the next neighbor of ~sampel-palnet is ~radbyr-fonlyr.
|=  x=@p  `@p`(add `@ud`x 1)