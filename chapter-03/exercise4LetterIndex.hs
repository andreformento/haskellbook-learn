-- page 105
module LetterIndex where

text = "Curry is awesome!"

letterIndex :: Int -> Char
letterIndex x = do
  head (drop (x - 1) text)
