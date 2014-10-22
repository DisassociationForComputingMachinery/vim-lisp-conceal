" we need the conceal feature (vim ≥ 7.3)
if exists('g:no_lisp_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax match lispNiceOperator "\<in\>" conceal cchar=∈
syntax match lispNiceOperator "\<or\>" conceal cchar=∨
syntax match lispNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match lispNiceOperator "\<not\>" conceal cchar=¬
syntax match lispNiceOperator "+" conceal cchar=∑
syntax match lispNiceOperator "sqrt" conceal cchar=√
syntax match lispNiceOperator "pi" conceal cchar=π
syntax match lispNiceOperator "sqrt" conceal cchar=√
syntax match lispNiceOperator "lambda" conceal cchar=λ

hi link lispNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
