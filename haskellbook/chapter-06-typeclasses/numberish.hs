module Numberish where

-- typeclass
class Numberish a where
    fromNumber :: Integer -> a
    toNumber :: a -> Integer

-- type
-- pretend newtype  is data for now
newtype Age =
    Age Integer
    deriving (Eq, Show)

-- instance of typeclass
instance Numberish Age where
    fromNumber n = Age n
    toNumber (Age n) = n

newtype Year =
    Year Integer
    deriving (Eq, Show)

instance Numberish Year where
    fromNumber n = Year n
    toNumber (Year n) = n

sumNumberish :: Numberish a => a -> a -> a
sumNumberish a a' = fromNumber summed
    where integerOfA      = toNumber a
          integerOfAPrime = toNumber a'
          summed = integerOfA + integerOfAPrime

-- Example:
-- sumNumberish (Age 10) (Age 11)
-- Age 21
