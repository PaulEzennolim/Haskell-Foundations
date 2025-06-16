-- Define altMap that alternately applies two functions to each element of a list
altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g [] = []                                -- Base case: an empty list returns an empty list
altMap f g (x:xs) = f x : altMap g f xs           -- Apply f to the first element, then swap f and g recursively

-- Define luhnDouble to handle the doubling and adjustment for numbers greater than 9
luhnDouble :: Int -> Int
luhnDouble x = let doubled = x * 2
               in if doubled > 9 then doubled - 9 else doubled

-- Define luhn function using altMap to alternate between luhnDouble and identity
luhn :: [Int] -> Bool
luhn digits = totalSum `mod` 10 == 0
  where
    -- Reverse the list so that we apply luhnDouble on every second digit from the right
    processedDigits = altMap luhnDouble id (reverse digits)
    -- Calculate the total sum of processed digits
    totalSum = sum processedDigits
