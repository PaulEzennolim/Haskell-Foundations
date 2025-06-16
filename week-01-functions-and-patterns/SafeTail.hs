-- Definition of safeTail using pattern matching
safeTail :: [a] -> [a]
safeTail [] = []         -- If the list is empty, return an empty list.
safeTail (_:xs) = xs     -- If the list has a head and a tail, return the tail (xs).

-- Main function to test safeTail with various inputs
main :: IO ()
main = do
    -- Test case 1: Non-empty list
    print (safeTail [1, 2, 3, 4])  -- Expected output: [2, 3, 4]

    -- Test case 2: Single-element list
    print (safeTail [42])          -- Expected output: []

    -- Test case 3: Empty list
    print (safeTail ([] :: [Int])) -- Expected output: []

    -- Test case 4: String (list of characters)
    print (safeTail "hello")       -- Expected output: "ello"
