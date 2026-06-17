module Main where
import Foreign.C.String

foreign import ccall "exercise_error" exercise_error :: Int -> IO CString

main :: IO ()
main = do
  result <- exercise_error 1
  resultString <- peekCString result
  putStrLn resultString
