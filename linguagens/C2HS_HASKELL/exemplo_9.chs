module Main where
import Foreign.C.String

foreign import ccall "calculate_sqrt" calculate_sqrt :: Double -> IO Double

main :: IO ()
main = do
  result <- calculate_sqrt 25.0
  putStrLn $ "Square Root: " ++ show result
