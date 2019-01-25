syntax keyword purescriptForall forall conceal cchar=∀

syntax match purescriptOperatorType '::' conceal cchar=∷
syntax match purescriptOperatorTypeSig '->' conceal cchar=→
syntax match purescriptOperatorTypeSig '<-' conceal cchar=←
syntax match purescriptOperatorTypeSig '=>' conceal cchar=⇒
syntax match purescriptOperatorTypeSig '<=' conceal cchar=⇐

syntax match keyword '<=' conceal cchar=≤
syntax match keyword '>=' conceal cchar=≥

" syntax match purescriptFunctionDecl '\\' conceal cchar=λ
syntax match purescriptOperatorFunction '\\' conceal cchar=λ

syntax keyword purescriptType Int conceal cchar=ℤ
syntax keyword purescriptType Number conceal cchar=ℝ

syn match purescriptDocComment "-- |-*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$" contains=@Spell

hi purescriptDocComment cterm=NONE ctermbg=NONE ctermfg=3

hi Conceal cterm=italic ctermbg=NONE ctermfg=darkblue
