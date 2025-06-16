-- The function 'consecutiveSum' takes a list of integers '[Int]'
-- and returns a new list where each element is the sum of consecutive pairs of elements from the input list.

consecutiveSum :: [Int] -> [Int]
-- 'zip xs (tail xs)' creates pairs of consecutive elements from the list 'xs'.
-- 'xs' is the original list, and 'tail xs' is the list 'xs' without its first element.
consecutiveSum xs = [x + y | (x, y) <- zip xs (tail xs)]
