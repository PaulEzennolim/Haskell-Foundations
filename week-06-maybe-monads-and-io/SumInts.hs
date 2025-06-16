module Main where

sumInts :: Integer -> IO Integer
sumInts total = do
  -- Prompt the user to enter a number
  putStrLn "Enter an integer (0 to stop):"
  
  -- Read a line of input and convert it to an Integer
  input <- getLine
  let number = read input :: Integer

  -- Check if the entered number is 0
  if number == 0
    then do
      -- If 0, terminate recursion and return the accumulated sum
      putStrLn ("Final sum: " ++ show total)
      return total
    else do
      -- If non-zero, add the number to the total and recursively call sumInts
      let newTotal = total + number
      sumInts newTotal  -- Recur with the updated total

-- Define main to call sumInts with an initial value
main :: IO ()
main = do
  result <- sumInts 0  -- Start with an initial total of 0
  putStrLn ("The sum of all entered numbers is: " ++ show result)
