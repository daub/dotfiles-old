syn keyword purescriptForall forall conceal cchar=∀

syn match purescriptOperatorType '::' conceal cchar=∷
syn match purescriptOperatorTypeSig '->' conceal cchar=→
syn match purescriptOperatorTypeSig '<-' conceal cchar=←
syn match purescriptOperatorTypeSig '=>' conceal cchar=⇒
syn match purescriptOperatorTypeSig '<=' conceal cchar=⇐

syn match keyword '<=' conceal cchar=≤
syn match keyword '>=' conceal cchar=≥

" syntax match purescriptFunctionDecl '\\' conceal cchar=λ
syn match purescriptOperatorFunction '\\' conceal cchar=λ

syn keyword pursType Int conceal cchar=ℤ
syn keyword pursType Number conceal cchar=ℝ

syn match pursDoc contained '.*'
syn match pursDocOpen contained '-- |'
syn match pursDocLine /^-- |.*$/ contains=pursDocOpen,pursDoc

hi pursDoc cterm=italic ctermbg=NONE ctermfg=8
hi pursDocOpen cterm=NONE ctermbg=NONE ctermfg=0

hi Conceal cterm=italic ctermbg=NONE ctermfg=darkblue
