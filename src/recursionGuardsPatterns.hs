-- no loops in haskell
-- use recursion

-- >>> fac 5
-- 120

fac :: Integer -> Integer
fac n =
    if n <= 1
        then 1
        else n * fac (n - 1)

-- Guards:
-- otherwise allways evaluates as True

-- >>> fac2 5
-- 120

fac2 :: Integer -> Integer
fac2 n
    | n <= 1 = 1
    | otherwise = n * fac (n - 1)

-- Pattern Matching
-- underscore _ is a wildcard: Any value will match

isZero :: Int -> Bool
isZero 0 = True
isZero _ = False

-- Accumulators:
-- fac3 is a tail recursive function.

-- >>> fac3 5

fac3 :: Integer -> Integer
fac3 n = aux n 1
  where
    aux n acc
        | n <= 1 = acc
        | otherwise = aux (n - 1) (n * acc)
