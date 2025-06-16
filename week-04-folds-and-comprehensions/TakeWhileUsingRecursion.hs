-- Recursive implementation of takeWhile
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []                         -- Base case: an empty list returns an empty list
takeWhile' p (x:xs)
  | p x       = x : takeWhile' p xs          -- If x satisfies the predicate, include x and recurse
  | otherwise = []                           -- If x does not satisfy the predicate, stop and return []