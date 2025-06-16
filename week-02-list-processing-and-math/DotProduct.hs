-- The function 'dotProduct' computes the dot product of two lists of integers.
-- It takes two lists 'xs' and 'ys', multiplies corresponding elements, and returns the sum of these products.

-- Type signature:
-- 'dotProduct' takes two lists of integers '[Int]' and returns a single integer 'Int'.
-- The lists must be of equal length, but we assume this for simplicity.
dotProduct :: [Int] -> [Int] -> Int
-- 'zip xs ys' pairs up corresponding elements from the two lists.
dotProduct xs ys = sum [x * y | (x, y) <- zip xs ys]
