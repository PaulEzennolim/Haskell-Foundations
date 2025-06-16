-- a) Calculate the sum of a list of numbers
mySum :: [Int] -> Int
mySum = sum

-- b) Take a given number of elements from the start of a list
myTake :: Int -> [a] -> [a]
myTake 0 _      = []       -- Base case: If we need to take 0 elements, return an empty list
myTake _ []     = []       -- Base case: If the list is empty, return an empty list, even if n > 0
myTake n (x:xs) = x : myTake (n - 1) xs  -- Recursive case: Take the head (x) and prepend it to the result of taking (n-1) elements from the tail (xs)

-- c) Select the last element of a non-empty list
myLast :: [a] -> a
myLast [x]    = x           -- Base case: If the list has one element, return that element
myLast (_:xs) = myLast xs   -- Recursive case: Discard the head (_) and continue searching in the tail (xs)

-- d) Function myZip takes two lists and "zips" them together
myZip :: [a] -> [b] -> [(a, b)]
myZip [] _          = []            -- If the first list is empty, stop zipping
myZip _ []          = []            -- If the second list is empty, stop zipping
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys  -- Pair the heads and recurse on the tails
