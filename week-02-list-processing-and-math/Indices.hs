-- The function returns a list of integers '[Int]', representing the indices where 'x' occurs in 'xs'.
indices :: Eq a => a -> [a] -> [Int]
-- 'zip [0..] xs' generates a list of pairs, where the first element of each pair is an index (from 0 upwards)
-- and the second element is the corresponding element from the list 'xs'.
indices x xs = [i | (i, y) <- zip [0..] xs, x == y]