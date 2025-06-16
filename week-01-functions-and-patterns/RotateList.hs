-- Function to rotate a list by moving the first 'n' elements to the end
rotate :: Int -> [a] -> [a]
-- Type signature: The function takes an integer 'n' and a list '[a]' and returns a list of the same type '[a]'.
-- 'Int' represents the number of elements to rotate, and '[a]' represents a list of any type 'a'.

rotate n xs = drop n xs ++ take n xs
    -- 'drop n xs' removes the first 'n' elements from the list 'xs' and returns the remainder.
    -- 'take n xs' takes the first 'n' elements from the list 'xs'.
    -- 'drop n xs ++ take n xs' concatenates the remaining part of the list (after dropping 'n' elements)
    -- with the first 'n' elements (moved to the end), effectively rotating the list.

-- Example usage in the 'main' function
main :: IO ()
main = do
    print (rotate 1 [3, 2, 5, 7])  -- Expected output: [2, 5, 7, 3]
    -- Moves the first element (3) to the end, resulting in [2, 5, 7, 3]

    print (rotate 2 [3, 2, 5, 7])  -- Expected output: [5, 7, 3, 2]
    -- Moves the first two elements (3, 2) to the end, resulting in [5, 7, 3, 2]

    print (rotate 3 [3, 2, 5, 7])  -- Expected output: [7, 3, 2, 5]
    -- Moves the first three elements (3, 2, 5) to the end, resulting in [7, 3, 2, 5]
