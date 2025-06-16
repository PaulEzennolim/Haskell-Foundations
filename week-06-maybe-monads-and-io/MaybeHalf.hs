module MaybeHalf where

maybeHalf :: Int -> Maybe Int
maybeHalf a
  | even a    = Just (div a 2)
  | otherwise = Nothing
