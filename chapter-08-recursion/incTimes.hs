-- page 275
module IncTimes where

inc :: Num a => a -> a
inc = (+1)
three = inc . inc . inc $ 0
-- different syntax, same thing
three' = (inc . inc . inc) 0

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes times n = 1 + (incTimes (times - 1) n)
