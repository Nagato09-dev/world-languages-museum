module Main where
import Foreign.C.String

foreign import ccall "to_uppercase" to_uppercase :: CString -> IO CString

main :: IO ()
main = do
  original <- newCString "hello c2hs"
  upper <- to_uppercase original
  upperString <- peekCString upper
  putStrLn $ "Uppercase: " ++ upperString
