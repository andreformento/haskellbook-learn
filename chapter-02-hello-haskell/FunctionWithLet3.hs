module FunctionWithLet3 where

printInc3 n =
  (\plusTwo -> print plusTwo) (n + 2)
