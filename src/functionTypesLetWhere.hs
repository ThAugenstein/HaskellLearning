-- function definition:
--
-- func arg1 arg2 arg3 ... = <expr>
--
-- no return statement
--
-- function application:
--
-- func arg1 arg2 ... argn
--
-- gets the value of the expressssion
--

-- >>> inRange 0 5 3
-- True

-- >>> inRange 4 5 3
-- False

inRange :: (Ord a) => a -> a -> a -> Bool
inRange min max x =
    x >= min && x <= max

-- Types (Basics)
--
-- name :: <type>

x :: Integer
x = 1

y :: Bool
y = True

z :: Float
z = 3.1415

-- Let Bindings:

inRange2 :: Integer -> Integer -> Integer -> Bool
inRange2 min max x =
    let inLowerBound = min <= x
        inUpperBound = max >= x
     in inLowerBound && inUpperBound

-- Where Biindings:

inRange3 :: Integer -> Integer -> Integer -> Bool
inRange3 min max x = ilb && iub
  where
    ilb = min <= x
    iub = max >= x

-- if - then - else expression:

inRange4 :: Integer -> Integer -> Integer -> Bool
inRange4 min max x =
    if ilb then iub else False
  where
    ilb = min <= x
    iub = max >= x

-- infix:
-- >>> add 10 20
-- 30

-- >>> 10 `add` 20
-- 30

add :: Integer -> Integer -> Integer
add x y = x + y
