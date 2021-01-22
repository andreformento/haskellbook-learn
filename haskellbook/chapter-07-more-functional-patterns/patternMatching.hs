-- page 264
module PatternMatching where

data Blah = Blah
blahFunc :: Blah -> Bool
blahFunc Blah = True
data Identity a =
    Identity a
    deriving (Eq, Show)

-- when you pattern match on Identity
-- you can unpack and expose the 'a'
unpackIdentity :: Identity a -> a
unpackIdentity (Identity x) = x

-- But you can choose to ignore
-- the contents of Identity
ignoreIdentity :: Identity a -> Bool
ignoreIdentity (Identity _) = True

-- or ignore it completely since matching on
-- a non-sum data constructor changes nothing.
ignoreIdentity' :: Identity a -> Bool
ignoreIdentity' _ = True
data Product a b =
    Product a b
    deriving (Eq, Show)

productUnpackOnlyA :: Product a b -> a
productUnpackOnlyA (Product x _) = x
productUnpackOnlyB :: Product a b -> b
productUnpackOnlyB (Product _ y) = y
productUnpack :: Product a b -> (a, b)
productUnpack (Product x y) = (x, y)

data SumOfThree a b c =
    FirstPossible  a
  | SecondPossible b
  | ThirdPossible  c
  deriving (Eq, Show)

sumToInt :: SumOfThree a b c -> Integer
sumToInt (FirstPossible  _) = 0
sumToInt (SecondPossible _) = 1
sumToInt (ThirdPossible  _) = 2

-- We can selectively ignore inhabitants of the sum
sumToInt' :: SumOfThree a b c -> Integer
sumToInt' (FirstPossible  _) = 0
sumToInt' _                  = 1