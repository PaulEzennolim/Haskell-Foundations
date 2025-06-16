map f xs = foldr (\x acc -> f x : acc) []  -- how `map` itself is defined
