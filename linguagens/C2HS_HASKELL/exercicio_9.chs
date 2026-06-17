module Main where
import Foreign.C.String

foreign import ccall "exercise_math" exercise_math :: Double -> IO Double

main :: IO ()
main = do
  result <- exercise_math 64.0
  putStrLn $ "Result: " ++ show result
