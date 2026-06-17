module Main where
import Foreign.C.String

foreign import ccall "get_list_element" get_list_element :: Int -> IO Int

main :: IO ()
main = do
  element <- get_list_element 2
  putStrLn $ "Element at index 2: " ++ show element
