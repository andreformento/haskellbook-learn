
module ThirdLetter where

thirdLetter :: String -> Char
thirdLetter x = do
  head removeBegin
  where removeBegin = drop 2 x
