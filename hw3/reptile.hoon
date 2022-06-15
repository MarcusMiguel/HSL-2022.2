:: Produce a type arm named `reptile` using +$ lusbuc which is a type union ($? bucwut) for several reptiles of your choice. 
:: (E.g. if I were doing this for amphibians, I could use %frog, %toad, and %salamander.)  Provide at least four options in the type union.
::  (The `%word` syntax is a "term", or internal constant value we can use to label things in Hoon:  previewing this a bit!) 
|=  x=@tas
=<
(reptile x)
|%
+$  reptile  ?(%frog %toad %salamander %crocodile)
--