-- page 260
module FoldBool where

foldBool :: Eq a => a -> a -> Bool -> a
foldBool x y True  = x
foldBool x y False = y
