-- exercises

-- 1) Given an expression, return type ":type"
-- a) (* a) 6
-- b) head [(0, "dog"), (1, "Hello")]
-- c) if False then True else False
-- d) length [1, 2, 5, 9]
-- e) (length [1, 2, 3]) > (length "tacocat")

-- 2) Given function body, write a signature type
-- example)
--    fu :: Num a => a -> a -> a
--    fu (x, y) = y
-- a) fh :: ...
--    fh (x: _) = x
-- b) fj :: ...
--    fj x y = if (x > y) then True else False
-- c) fs :: ...
--    fs (x, y) = y

-- 3) Types data Woot
--          data Blah
-- I have the an undefined function
-- f :: Woot -> Blah
-- f :: undefinied
-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (b, w) = (b, f w)
-- I want a function that receive a tuple and return Blah

-- 4) f :: Int -> String 
--    f = undefined
--    g :: String -> Char
--    g = undefined
--    h :: Int -> Char
--    h = ???
--    Write h function using f and g

-- 5) data A
--    data B
--    q :: A -> B
--    q = undefined
--    w :: B -> C
--    w = undefined
--    e :: A - C
--    e = ???
