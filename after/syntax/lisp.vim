" we need the conceal feature (vim ≥ 7.3)
if exists('g:no_lisp_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

syntax keyword lispNiceOperator member conceal cchar=∈
syntax keyword lispNiceOperator or conceal cchar=∨
syntax keyword lispNiceOperator and conceal cchar=∧
syntax keyword lispNiceOperator not conceal cchar=¬
syntax keyword lispNiceOperator + conceal cchar=∑
syntax keyword lispNiceOperator sqrt conceal cchar=√
syntax keyword lispNiceOperator pi conceal cchar=π
syntax keyword lispNiceOperator lambda conceal cchar=λ

hi link lispNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
