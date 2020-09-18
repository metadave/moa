module Main (main) where

import Moa.Moa (someFunc)
import Moa.CLI

main :: IO ()
main = do
         let x = sample
         putStrLn "MOA v0.1.0"
         someFunc
