-- Redefine `concat'` to flatten a list of lists into a single list using `concat`
concat' :: [[a]] -> [a]
concat' = concat
-- The `concat` function in Haskell takes a list of lists `[[a]]` and returns a single list `[a]`.
-- For example, `concat' [[1,2], [3,4], [5]]` will produce 
