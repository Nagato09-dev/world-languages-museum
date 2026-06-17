module Main where
import Foreign.C.String

foreign import ccall "exercise_conditional" exercise_conditional :: Int -> IO CString

main :: IO ()
main = do
  result <- exercise_conditional 20
  resultString <- peekCString result
  putStrLn resultString
