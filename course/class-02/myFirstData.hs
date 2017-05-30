module MyFirstData where

data MyData = D1 | D2 | D3 deriving Show

data Person = Person1 | Person2 String | Person3 (String, Int) deriving Show

f :: Person
f = Person1

g :: Person
g = Person2 "Andre"