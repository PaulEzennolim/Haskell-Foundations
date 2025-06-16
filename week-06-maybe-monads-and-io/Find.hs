find :: (a -> Bool) -> [a] -> Maybe a
find _ [] = Nothing                    -- Base case: empty list, return Nothing
find predicate (x:xs)                  -- Recursive case: non-empty list
    | predicate x = Just x             -- If predicate holds for x, return Just x
    | otherwise   = find predicate xs  -- Otherwise, recurse on the rest of the list
