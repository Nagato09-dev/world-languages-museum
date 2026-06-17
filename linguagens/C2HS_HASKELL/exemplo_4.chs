module Main where
import Foreign.C.String

foreign import ccall "run_loop" run_loop :: Int -> IO ()

main :: IO ()
main = run_loop 5
