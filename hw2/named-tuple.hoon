:: Produce a named tuple with three elements `x`, `y`, ad `z`, all of type `@rs` (real number, number with a fractional part).
:-  %say
|=  *
:-  %noun
=/  foo  $:(x=@rs y=@rs z=@rs)
(foo .1 .2 .3)
