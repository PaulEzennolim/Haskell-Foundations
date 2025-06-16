-- Function to check if three values are equal
threeEqual :: Eq a => a -> a -> a -> Bool
-- Type signature: The function takes three arguments of any type 'a' that belongs to the 'Eq' type class (meaning the type supports equality comparison) and returns a Boolean value.

threeEqual x y z = x == y && y == z
    -- 'x == y' checks if 'x' is equal to 'y'.
    -- 'y == z' checks if 'y' is equal to 'z'.
    -- The result is True if both comparisons are True, meaning all three values are equal.

-- Function to check if four values are equal
fourEqual :: Eq a => a -> a -> a -> a -> Bool
-- Type signature: The function takes four arguments of any type 'a' that belongs to the 'Eq' type class (meaning the type supports equality comparison) and returns a Boolean value.

fourEqual x y z w = threeEqual x y z && z == w
    -- 'threeEqual x y z' checks if the first three values 'x', 'y', and 'z' are equal.
    -- 'z == w' checks if the third value 'z' is equal to 'w'.
    -- The result is True only if both conditions are True, meaning all four values are equal.

main :: IO ()
main = do
    -- Testing threeEqual
    print (threeEqual 4 4 4)  -- Expected output: True
    print (threeEqual 4 4 3)  -- Expected output: False

    -- Testing fourEqual
    print (fourEqual 4 4 4 4)  -- Expected output: True
    print (fourEqual 4 4 3 4)  -- Expected output: False
    print (fourEqual 5 5 5 6)  -- Expected output: False

