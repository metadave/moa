module Moa.CLI (CLIOpts(..), cli_opts) where
import Options.Applicative
--import Data.Semigroup ((<>))

data CLIOpts = CLIOpts
  { infiles    :: [String]
  , output     :: String
  , quiet      :: Bool
  , enthusiasm :: Int }

cli_opts :: Parser CLIOpts
cli_opts = CLIOpts
      <$> some (argument str (metavar "FILES..."))
      <*> strOption
        ( long "output"
        <> short 'o'
        <> metavar "FILE"
        <> value "a.out"
        <> showDefault
        <> help "Write output to FILE" )      
      <*> switch
          ( long "quiet"
         <> short 'q'
         <> help "Whether to be quiet" )
      <*> option auto
          ( long "verbosity"
         <> help "Noisy compilation"
         <> showDefault
         <> value 1
         <> metavar "INT" )