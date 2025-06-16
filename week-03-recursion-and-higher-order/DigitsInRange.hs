-- Functions inRangec and inRanger both returns a list of elements in a list that are greater than or equal to a and less than or equal to b  
-- a) Using list comprehension
inRangec :: Int -> Int -> [Int] -> [Int]
inRangec a b xs = [x | x <- xs, x >= a, x <= b]

-- b) Using recursion
inRanger :: Int -> Int -> [Int] -> [Int]
inRanger _ _ [] = []  -- Base case: empty list
inRanger a b (x:xs)
  | x >= a && x <= b = x : inRanger a b xs  -- Recursive case: include elements in range
  | otherwise        = inRanger a b xs      -- Skip elements outside the range
