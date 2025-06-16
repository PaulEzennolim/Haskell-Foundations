-- Euclid's algorithm for calculating the greatest common divisor (GCD)
-- The function takes two non-negative integers as input and returns their GCD.
euclid :: Int -> Int -> Int
euclid a b
  -- If both numbers are equal, the GCD is the number itself
  | a == b    = a
  
  -- If 'a' is greater than 'b', subtract 'b' from 'a' and recursively apply the function
  | a > b     = euclid (a - b) b
  
  -- If 'b' is greater than 'a', subtract 'a' from 'b' and recursively apply the function
  | otherwise = euclid a (b - a)
