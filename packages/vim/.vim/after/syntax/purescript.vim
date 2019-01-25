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

syn match pursCommentDoc /^-- |.*$/
