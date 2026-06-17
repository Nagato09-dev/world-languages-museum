module Main where
import Foreign.C.String

foreign import ccall "exercise_variables" exercise_variables :: IO CString

main :: IO ()
main = do
  result <- exercise_variables
  resultString <- peekCString result
  putStrLn resultString
