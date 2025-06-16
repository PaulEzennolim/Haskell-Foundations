import MaybeHalf (maybeHalf)  -- Importing maybeHalf from MaybeHalf.hs

maybeEighth :: Int -> Maybe Int
maybeEighth a = do
  half1 <- maybeHalf a      -- First division: half1 will be Nothing or Just half1
  half2 <- maybeHalf half1  -- Second division: half2 will be Nothing or Just half2
  half3 <- maybeHalf half2  -- Third division: half3 will be Nothing or Just half3
  return half3              -- Wrap final result in Just
