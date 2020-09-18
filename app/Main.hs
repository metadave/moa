module Main (main) where
import Options.Applicative
import Data.Semigroup ((<>))
import Data.List (intercalate)
import Moa.Moa (someFunc)
import Moa.CLI


main :: IO ()
main = greet =<< execParser opts
  where
    opts = info (cli_opts <**> helper)
      ( fullDesc
     <> progDesc "moa v0.1.0"
     <> header "moa - a compiler" )

greet :: CLIOpts -> IO ()
greet (CLIOpts ins out _quiet _verbosity) = 
        do
          putStrLn $ "Writing output to " ++ out
          putStrLn $ "Compiling " ++ filelist
        where
          filelist = intercalate ", " ins