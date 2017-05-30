module Exercises where
-- exercises

-- escrever o lambda na mão (beta reduction)
-- escrever o corpo das funções usando let, where e lambda
-- example: lambda sintax
-- let sub = \x y -> x - y

sub x y = x - y
add x y = x + y
mul x y = x * y

f x = (add x x) + (sub x 10)
g x y = (mul x y) / (sub x y)

myLambda = \x y -> x - y

withWhere :: Int -> Int
withWhere x = z + k where z = (add x x)
                          k = (sub x 10)

withLet x =
    let z = (add x x)
        k = (sub x 10) in z + k
