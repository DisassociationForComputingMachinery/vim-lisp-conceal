" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear lispOperator

syntax match lispOperator "\<is\>"

syntax match lispNiceOperator "\<in\>" conceal cchar=∈
syntax match lispNiceOperator "\<or\>" conceal cchar=∨
syntax match lispNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match lispNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match lispNiceOperator "\<not in\>" conceal cchar=∉
syntax match lispNiceOperator "<=" conceal cchar=≤
syntax match lispNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match lispNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match lispNiceOperator "!=" conceal cchar=≢

syntax keyword lispNiceOperator sum conceal cchar=∑
syntax match lispNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match lispNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax keyword lispNiceStatement lambda conceal cchar=λ

hi link lispNiceOperator Operator
hi link lispNiceStatement Statement
hi link lispNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
