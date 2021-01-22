module SimpleLambda where

-- c where a = b
-- # equivalent to
-- (\a -> c) b

-- # Something more concrete again
-- x + 9001 where x = 10
-- (\x -> x + 9001) 10

idFunction :: a -> a
idFunction x = (\y -> y) x
