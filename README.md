This syntax file displays unicode characters for some Lisp keywords and
built-in functions, turning the following:

```lisp
((lambda (x y) (+ x y)) 2 3)

(defun foo (e a)
  (cond
    ((and (member e '(1 2 3))
         (not a))
     (sqrt pi))
    (t (+ 1 2 3))))
```

into

```lisp
((λ (x y) (+ x y)) 2 3)

(defun foo (e a)
  (cond
    ((∧ (∈ e '(1 2 3))
         (¬ a))
     (√ π))
    (t (∑ '(1 2 3)))))
```

*This does not – at any point – alter your source code*. It simply uses Vim's
"conceal" feature to “hide” `member` behind `∈`, etc. Whenever the cursor is at
a line with concealed text, the text will be expanded.

To install, simply put `lisp.vim` in `~/.vim/after/syntax` or use something
like [Pathogen](https://github.com/tpope/vim-pathogen) or Vundle (recommended).

Vim ≥ 7.3 is required.

This plug-in is very much inspired by
<https://github.com/ehamberg/vim-cute-python>
and consequently
<http://github.com/Twinside/vim-haskellConceal>
