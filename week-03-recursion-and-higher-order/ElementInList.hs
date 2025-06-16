-- Function elem' checks whether x belongs in the list xs, and returns TRUE or FALSE respectively
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False                   -- Base case: empty list means x is not in the list
elem' x (y:ys)
  | x == y    = True                 -- If x is equal to the head, return True
  | otherwise = elem' x ys           -- Otherwise, check the rest of the list recursively
