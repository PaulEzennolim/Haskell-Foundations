-- replicate' froms a list based on n copies of element x
replicate' :: Int -> a -> [a]
replicate' 0 _ = []            -- Base case: If n is 0, return an empty list
replicate' n x = x : replicate' (n - 1) x  -- Recursive case: Prepend x to the result of replicating n-1 times
