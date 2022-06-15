:: Compose a gate which accepts a tape representing a hexadecimal color value and returns the equivalent `@ux` hexadecimal value.
:: E.g., given any of "#ABCDEF", "#abcdef", "ABCDEF", or "abcdef", the gate should return 0xab.cdef.
|=  x=tape
^-  @ux
  ?.  =((head x) '#')
    `@ux`+>:(de:base16:mimes:html (crip (cass x)))
  `@ux`+>:(de:base16:mimes:html (crip (cass (tail x))))