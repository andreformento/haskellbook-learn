-- page 209
module AddWeird where

-- not work because some Num can not be Ord
-- addWeird :: Num a => a -> a -> a

addWeird :: (Num a, Ord a) => a -> a -> a
addWeird x y =
    if x > 1
    then x + y
    else x

-- examples
-- addWeird 1 2
-- addWeird 5 6
