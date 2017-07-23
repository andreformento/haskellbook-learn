module Identity where

data Identity a =
    Identity a

-- not work
-- instance Eq (Identity a) where
--     (==) (Identity v) (Identity v') = v == v'

instance Eq a => Eq (Identity a) where
    (==) (Identity v) (Identity v') = v == v'

-- another way (this work):
-- instance Ord a => Eq (Identity a) where
--     (==) (Identity v) (Identity v') =
--       compare v v' == EQ

-- Example:
-- Identity 1 == Identity 2