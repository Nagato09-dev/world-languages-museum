add : ℕ → ℕ → ℕ
add zero n = n
add (suc m) n = suc (add m n)