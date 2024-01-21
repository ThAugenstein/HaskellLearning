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
