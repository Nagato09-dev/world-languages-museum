module Main where
import Foreign.C.String

foreign import ccall "add_numbers" add_numbers :: Int -> Int -> IO Int

main :: IO ()
main = do
  result <- add_numbers 5 7
  putStrLn $ "Sum: " ++ show result
