{- |
Copyright: (c) 2020 Dave Parfitt
SPDX-License-Identifier: Apache-2.0
Maintainer: Dave Parfitt <metadave@protonmail.com>

See README for more info
-}

module Moa
       ( someFunc
       ) where


someFunc :: IO ()
someFunc = putStrLn ("someFunc" :: String)
