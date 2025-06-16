-- a) Adds 3 to each element in xs
mapPlus3 :: [Int] -> [Int]
mapPlus3 xs = [ x + 3 | x <- xs ]

-- b) Filters elements greater than 7 from xs
filterGreaterThan7 :: [Int] -> [Int]
filterGreaterThan7 xs = [ x | x <- xs, x > 7 ]

-- c) Creates all pairs (x, y) for x in xs and y in ys
createPairs :: [a] -> [b] -> [(a, b)]
createPairs xs ys = [ (x, y) | x <- xs, y <- ys ]

-- d) Sums each pair in xys and filters results greater than 3
filterSumGreaterThan3 :: [(Int, Int)] -> [Int]
filterSumGreaterThan3 xys = [ x + y | (x, y) <- xys, (x + y) > 3 ]

-- Main function to test outputs
main :: IO ()
main = do
    print (mapPlus3 [1, 2, 3])                        -- Example output for (a)
    print (filterGreaterThan7 [5, 10, 3, 8])          -- Example output for (b)
    print (createPairs [1, 2] ['a', 'b'])             -- Example output for (c)
    print (filterSumGreaterThan3 [(1, 2), (2, 2), (3, 1)])  -- Example output for (d)
