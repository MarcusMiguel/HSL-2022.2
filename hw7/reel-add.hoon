:: Produce a gate which folds a list using ++reel or ++roll with ++add:rs to produce the cumulative sum of a list.  E.g. the sum of ~[.1.0 .0.5 .0.333 .0.25 .0.2 .0.167 .0.143 .0.125 .0.111] should be .2.829.
|=  l=(list @)
(reel `(list @)`l add:rs)