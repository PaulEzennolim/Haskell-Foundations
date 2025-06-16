-- Function oddSquaresc and oddSquaresr both returns the list of the squares of the odd numbers in a list
-- a) Using list comprehension
oddSquaresc :: [Int] -> [Int]
oddSquaresc xs = [x^2 | x <- xs, odd x]

-- b) Using recursion
oddSquaresr :: [Int] -> [Int]
oddSquaresr [] = []  -- Base case: empty list
oddSquaresr (x:xs)
  | odd x     = (x^2) : oddSquaresr xs  -- Recursive case: square odd numbers
  | otherwise = oddSquaresr xs          -- Skip even numbers
