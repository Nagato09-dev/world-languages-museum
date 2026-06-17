module Main where
import Foreign.C.String

foreign import ccall "check_condition" check_condition :: Int -> IO CString

main :: IO ()
main = do
  result1 <- check_condition 10
  resultString1 <- peekCString result1
  putStrLn resultString1

  result2 <- check_condition 3
  resultString2 <- peekCString result2
  putStrLn resultString2
