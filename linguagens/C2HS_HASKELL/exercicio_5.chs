module Main where
import Foreign.C.String

foreign import ccall "exercise_function" exercise_function :: Int -> IO Int

main :: IO ()
main = do
  result <- exercise_function 8
  putStrLn $ "Result: " ++ show result
