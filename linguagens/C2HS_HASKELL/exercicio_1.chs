module Main where
import Foreign.C.String

foreign import ccall "exercise_hello" exercise_hello :: IO ()

main :: IO ()
main = exercise_hello
