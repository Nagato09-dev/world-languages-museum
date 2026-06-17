module Main where
import Foreign.C.String

foreign import ccall "exercise_string" exercise_string :: CString -> IO CString

main :: IO ()
main = do
  original <- newCString "c2hs example"
  processed <- exercise_string original
  processedString <- peekCString processed
  putStrLn $ "Processed: " ++ processedString
