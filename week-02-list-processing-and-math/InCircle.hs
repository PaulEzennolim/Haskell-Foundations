-- Function to count the number of pairs (x, y) of natural numbers that lie inside
-- or on the boundary of a circle of radius n centered at the origin (0, 0).
-- 'x <- [0..n]': Iterate over all possible values of 'x' from 0 to 'n'.
-- 'y <- [0..n]': For each 'x', iterate over all possible values of 'y' from 0 to 'n'.
inCircle :: Int -> Int
inCircle n = length [(x, y) | x <- [0..n], y <- [0..n], x^2 + y^2 <= n^2]
