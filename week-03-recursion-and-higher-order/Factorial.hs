-- Define the factorial function, which takes an integer as input and returns an integer
fact :: Int -> Int

fact n 
  -- If the input is negative, raise an error with a meaningful message
  | n < 0     = error "Factorial is not defined for negative numbers."

  -- Base case: if the input is 0, return 1 (since 0! is defined as 1)
  | n == 0    = 1

  -- Recursive case: multiply n by the factorial of (n - 1)
  | otherwise = n * fact (n - 1)
