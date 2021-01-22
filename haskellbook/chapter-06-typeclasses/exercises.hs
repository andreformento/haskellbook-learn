-- page 206
-- Write the Eq instance for the datatype provided.

module Exercises where

data TisAnInteger = TisAn Integer
instance Eq TisAnInteger where
    (==) a b = a == b

data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
    (==) (Two a b) (Two c d) = a == c && b == d

data StringOrInt = TisAnInt Int | TisAString String
data Pair a = Pair a a
data Tuple a b = Tuple a b
data Which a = ThisOne a | ThatOne a
data EitherOr a b = Hello a | Goodbye b
