main : IO ()
main = do
  let idade = 25
  let nome = "Idris"
  putStrLn (nome ++ " tem " ++ show idade ++ " anos")