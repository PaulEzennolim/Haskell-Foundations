-- `myFunction` is a comparison function that checks if the first grade is less than or equal to the second grade
myFunction :: (String, Int) -> (String, Int) -> Bool
myFunction (_, grade1) (_, grade2) = grade1 <= grade2
-- We ignore the names in each tuple (hence the `_`) and only compare the grades.

mergesort :: (a -> a -> Bool) -> [a] -> [a]
mergesort _ [] = []                  -- Base case: An empty list is already sorted
mergesort _ [x] = [x]                -- Base case: A single-element list is already sorted
mergesort cmp xs = merge cmp (mergesort cmp left) (mergesort cmp right)
  where
    -- Split the list in two halves using `splitAt`, which returns a tuple of two lists
    (left, right) = splitAt (length xs `div` 2) xs
    
    -- `merge` is a helper function that merges two sorted lists into a single sorted list
    merge _ xs [] = xs               -- If the second list is empty, return the first list
    merge _ [] ys = ys               -- If the first list is empty, return the second list
    merge cmp (x:xs) (y:ys)
      | cmp x y   = x : merge cmp xs (y:ys)  -- If `x` should come before `y`, put `x` first
      | otherwise = y : merge cmp (x:xs) ys  -- Otherwise, put `y` first

-- Example usage: sorting a list of (name, grade) pairs by grade in ascending order
-- `myFunction` is passed as the comparison function to `mergesort`.
-- Only the grades are compared, while names are ignored in the comparison.
exampleSortedList :: [(String, Int)]
exampleSortedList = mergesort myFunction [("Sam", 46), ("Bob", 22), ("Alice", 65), ("George", 87), ("Jason", 77)]
-- Expected output: [("Bob", 22), ("Sam", 46), ("Alice", 65), ("Jason", 77), ("George", 87)]
