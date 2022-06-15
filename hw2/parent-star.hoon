:: Write a generator which accepts the value of a planet as a `@p` and returns the parent star, also as a `@p`.  The parent of a planet is calculated by taking the remainder after division by 65.536. 
:: You can obtain this value using the `++mod` gate or the `++dvr` gate.  You will then need to convert it from `@ud` back to `@p`.  (You don't need to filter for planet input or anything, just for `@p`.) 
:: For instance, the parent of ~sampel-palnet is ~talpur.
|=  x=@p  `@p`(mod [`@ud`x 65.536])

