-- Function digitsOf returns the list of digits of a number
digitsOf :: Int -> [Int]
digitsOf 0 = []  -- Base case: if the number is 0, return an empty list
digitsOf n = digitsOf (n `div` 10) ++ [n `mod` 10]  -- Recursive case: extract the last digit and continue with the rest
