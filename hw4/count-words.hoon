/+  countwordslibrary
|=  input=(list @t)
=<
(countwords input)
|%
++  countwords
  |=  x=(list @t)
  (count-elements:countwordslibrary (split-tape:countwordslibrary x))
--