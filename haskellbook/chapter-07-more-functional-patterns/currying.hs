-- page 263
module Currying where

-- curry and uncurry already exist in Prelude
curry' :: ((a, b) -> c) -> a -> b -> c
curry' f a b = f (a, b)

uncurry'  :: (a -> b -> c) -> ((a, b) -> c)
uncurry'  f (a, b) = f a b

uncurry'' :: (a -> b -> c) -> (a, b) -> c
uncurry'' f (a, b) = f a b

uncurry3  :: (a -> b -> c) -> a -> b -> c
uncurry3  f a b    = f a b

myFunction :: (Integral a) => a -> a -> a
myFunction x y = x + y

-- Examples:
-- uncurry'  myFunction (1, 2)
-- uncurry'' myFunction (1, 2)
-- uncurry3  myFunction 1 2

-- uncurried function, takes a tuple of its arguments
add :: (Int, Int) -> Int
add (x, y) = x + y

add' :: Int -> Int -> Int
add' = curry' add

f1 a b = a + b
-- is equivalent to:
f2 = \a -> (\b -> a + b)
