module Main where
import Foreign.C.String

foreign import ccall "exercise_list" exercise_list :: IO CString

main :: IO ()
main = do
  result <- exercise_list
  resultString <- peekCString result
  putStrLn resultString
