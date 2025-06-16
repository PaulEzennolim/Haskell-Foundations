-- Function to return the maximum of three values
maxOfthree :: Ord a => a -> a -> a -> a
-- Type signature: The function takes three arguments of any type `a` that belongs to the `Ord` type class (which means the type must support ordering).
-- It returns the maximum value of type `a`.

maxOfthree x y z = max x (max y z)
    -- 'max y z' compares 'y' and 'z', returning the larger of the two.
    -- 'max x (max y z)' then compares 'x' with the result of 'max y z', returning the maximum of all three values.

-- Example usage in the 'main' function
main :: IO ()
main = do
    print (maxOfthree 6 2 4)  -- Expected output: 6
    print (maxOfthree 6 7 4)  -- Expected output: 7
    print (maxOfthree 1 2 3)  -- Expected output: 3
    print (maxOfthree 5 5 5)  -- Expected output: 5
