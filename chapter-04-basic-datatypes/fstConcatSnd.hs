module FstConcatSnd where
-- page 127

f :: (a,b) -> (c,d) -> ((b,d), (a,c))
f x y = do
  (one, two)
  where one = (snd x, snd y)
        two = (fst x, fst y)
