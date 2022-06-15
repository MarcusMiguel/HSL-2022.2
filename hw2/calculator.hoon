:: Write a generator that takes a sample of 3 arguments—two @uds and a @tas (which will be one of %mul %sub %add %div), with arms to handle multiplication, division, addition and subtraction.  
:: Use a gate.  Write ?: wutcol runes to branch for each @tas case and the .= dottis equality-checking rune to check for actual value of the input v. option.  Use the standard library functions to do the actual work in those arms.  
:: Confirm that you can input your three arguments and receive the desired result of the selected operation.  E.g. assuming your generator is named calculator.hoon, `+calculator [4 5 %mul]` should yield 20.
|=  [a=@uds b=@uds c=@tas]  ?:  =(%add c)  (add a b)  ?:  =(%sub c)  (sub a b)  ?:  =(%mul c)  (mul a b)  ?:  =(%div c)  (div a b)  0
