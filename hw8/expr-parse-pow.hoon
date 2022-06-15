:: Add exponentiation to the arithmetic expression parser in the Parsing guide at https://urbit.org/docs/hoon/guides/parsing#recursive-parsers. 
:: Give the entire gate as your answer here.
::  expr-parse: parse arithmetic expressions
::
|=  math=tape
|^  (scan math expr)
++  factor
  %+  knee  *@ud
  |.  ~+
  ;~  pose
    dem
    (ifix [pal par] expr)
  ==
++  expo
  %+  knee  *@ud
  |.  ~+
  ;~  pose
    ((slug |:([a=0 b=1] (pow a b))) ket ;~(pose factor expo))
    factor
  ==
++  term
  %+  knee  *@ud
  |.  ~+
  ;~  pose
    ((slug mul) tar ;~(pose expo term))
    expo
  ==
++  expr
  %+  knee  *@ud
  |.  ~+
  ;~  pose
    ((slug add) lus ;~(pose term expr))
    term
  ==
--