import MaybeHalf (maybeHalf)  -- Importing maybeHalf from MaybeHalf.hs

maybeEighth :: Int -> Maybe Int
maybeEighth a = case maybeHalf a of
  Nothing -> Nothing                             -- If first division fails, return Nothing
  Just half1 -> case maybeHalf half1 of
    Nothing -> Nothing                           -- If second division fails, return Nothing
    Just half2 -> case maybeHalf half2 of
      Nothing -> Nothing                         -- If third division fails, return Nothing
      Just eighth -> Just eighth                 -- Return result wrapped in Just
