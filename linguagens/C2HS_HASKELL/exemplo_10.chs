module Main where
import Foreign.C.String

foreign import ccall "sort_list" sort_list :: IO CString

main :: IO ()
main = do
  sortedList <- sort_list
  sortedString <- peekCString sortedList
  putStrLn $ "Sorted List: " ++ sortedString
