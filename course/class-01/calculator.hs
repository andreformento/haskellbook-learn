module Calculator where

add a b = a + b

sub a b = a - b

func :: Int -> Int -> Int
func x y =
    join sum subtract x y
    where sum a b = a + b
          subtract a b = a - b
          join fa fb a b = (*) (fa a b) (fb a b)

f x y = 
    let z = x + y
        k = z * x in k - y

f2 :: Int -> Int -> Int
f2 x y = (z * x - y) where z = x + y

f3 x y = k - y 
       where k = z * x
             z = x + y
