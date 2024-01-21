-- Functional Programming
--
-- Pure (mathematical) functions
-- Immutable data
-- No/Less side effects
-- Declarative
-- Easier to verify

-- >>> sum1 [1..4]
-- 10

sum1 :: (Num a) => [a] -> a
sum1 [] = 0
sum1 (x : xs) = x + sum1 xs

-- >>> sum2 [1..5]

sum2 :: (Num a) => [a] -> a
sum2 = foldr (+) 0

-- Lazy evaluation

func1 arg = undefined
func2 arg = undefined
func3 arg = undefined

-- Evaluates just one of func1 and func2 depending of value of z

myfunc arg =
    let x = func1 arg
        y = func2 arg
        z = func3 arg
     in if z then x else y
