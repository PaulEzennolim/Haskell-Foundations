-- `curry'` converts a function that takes a pair into a curried function
curry' :: ((a, b) -> c) -> a -> b -> c
curry' f x y = f (x, y)

-- `uncurry'` converts a curried function into a function that takes a pair
uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f (x, y) = f x y
