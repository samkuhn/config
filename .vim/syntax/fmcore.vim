" syntax/fmcore.vim

syntax keyword fmcKeywords
  \ def
  \ dup
  \ let
  \ cpy
  \ if
  \ then
  \ else
  \ fst
  \ snd
  \ get

syntax region fmcString start=/"/ skip=/\\"/ end=/"/
syntax region fmcLambda start="{" end="}"

syntax match fmcOperator "\v\+"
syntax match fmcOperator "\v\-"
syntax match fmcOperator "\v\*"
syntax match fmcOperator "\v\/"
syntax match fmcOperator "\v\%"
syntax match fmcOperator "\v\*\*"
syntax match fmcOperator "\v\&"
syntax match fmcOperator "\v\^"
syntax match fmcOperator "\v\|"
syntax match fmcOperator "\v\~"
syntax match fmcOperator "\v\>"
syntax match fmcOperator "\v\<"
syntax match fmcOperator "\v\=\="
syntax match fmcOperator "\v\>\>"
syntax match fmcOperator "\v\<\<"

syntax match fmcDecl "\v\="
syntax match fmcDecl "\v\:"

syntax match fmcNumber "\v<\d+>"
syntax match fmcNumber "\v<\~\d+>"
syntax match fmcNumber "\v<0x[0-9,a-f]+>"
syntax match fmcNumber "\v<0b[01]+>"
syntax match fmcComment "\v\/\/.*$"
syntax match fmcBox "\v\#"

syntax match fmcPairL "\v\["
syntax match fmcPairR "\v\]"
syntax match fmcPairSep "\v\,"


highlight default link fmcKeywords Keyword
highlight default link fmcString String
highlight default link fmcPairR Constant
highlight default link fmcPairL Constant
highlight default link fmcPairSep Constant
highlight default link fmcOperator Operator
highlight default link fmcComment Comment
highlight default link fmcNumber Number
highlight default link fmcBox SpecialChar
highlight default link fmcLambda Function
highlight default link fmcDecl Operator

