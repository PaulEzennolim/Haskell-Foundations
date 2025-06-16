addThreeMaybe :: Maybe Int -> Maybe Int -> Maybe Int -> Maybe Int
addThreeMaybe mx my mz = do
  -- Pattern match to extract the value from the first Maybe Int, mx
  x <- mx

  -- Pattern match to extract the value from the second Maybe Int, my
  y <- my

  -- Pattern match to extract the value from the third Maybe Int, mz
  z <- mz

  -- If all values are present, return their sum wrapped in Just
  return (x + y + z)
