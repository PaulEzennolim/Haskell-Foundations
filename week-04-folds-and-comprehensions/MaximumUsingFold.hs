myMaximum :: (Ord a) => [a] -> a
myMaximum = foldr1 max
