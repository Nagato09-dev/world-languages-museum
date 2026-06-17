twice : {A : Set} → (A → A) → A → A
twice f x = f (f x)