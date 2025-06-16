-- Function selection returns the n-th element in the list
selection :: [a] -> Int -> a
selection (x:_) 0 = x                -- Base case: n == 0, return the head of the list
selection (_:xs) n = selection xs (n - 1)  -- Recursive case: discard the head, recurse with n-1
