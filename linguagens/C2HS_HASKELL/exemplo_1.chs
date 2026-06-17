module Main where
import Foreign.C.String

foreign import ccall "hello_world" hello_world :: IO ()

main :: IO ()
main = hello_world
