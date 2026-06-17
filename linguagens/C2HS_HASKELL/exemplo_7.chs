module Main where
import Foreign.C.String

foreign import ccall "handle_error" handle_error :: Int -> IO CString

main :: IO ()
main = do
  result1 <- handle_error 0
  resultString1 <- peekCString result1
  putStrLn resultString1

  result2 <- handle_error 5
  resultString2 <- peekCString result2
  putStrLn resultString2
