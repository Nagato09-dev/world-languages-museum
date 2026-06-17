module Main where
import Foreign.C.String

foreign import ccall "exercise_loop" exercise_loop :: Int -> IO ()

main :: IO ()
main = exercise_loop 3
