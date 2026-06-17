module Main where
import Foreign.C.String

foreign import ccall "get_int_value" get_int_value :: IO Int
foreign import ccall "get_string_value" get_string_value :: IO CString

main :: IO ()
main = do
  intValue <- get_int_value
  stringValue <- get_string_value >>= peekCString
  putStrLn $ "Int Value: " ++ show intValue
  putStrLn $ "String Value: " ++ stringValue
