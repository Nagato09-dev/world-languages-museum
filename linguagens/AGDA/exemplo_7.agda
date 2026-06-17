-- Agda é total, erros são tipos
data Maybe (A : Set) : Set where
  nothing : Maybe A
  just : A → Maybe A