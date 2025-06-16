-- Define divideAverage to split a list into two lists based on the average value
divideAverage :: (Fractional a, Ord a) => [a] -> ([a], [a])
divideAverage xs = (ys, zs)
  where
    -- Calculate the average of the list
    avg = sum xs / fromIntegral (length xs)
    
    -- Partition the list into elements less than and greater than the average
    ys = [x | x <- xs, x < avg]
    zs = [x | x <- xs, x > avg]
