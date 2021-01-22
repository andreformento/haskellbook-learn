module Bottom where

f :: Bool -> Int
f True = error "Blah"
f False = 0

f2 :: Bool -> Int
f2 False = 0
f2 _ = error $ "*** Exception: "
            ++ "Non-exhaustive "
            ++ "patterns in function f2"