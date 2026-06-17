module Main where
import Foreign.C.String

foreign import ccall "exercise_sort" exercise_sort :: IO CString

main :: IO ()
main = do
  result <- exercise_sort
  resultString <- peekCString result
  putStrLn resultString
