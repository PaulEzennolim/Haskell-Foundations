-- Function to return all odd items from a list of integers
oddItems :: [Int] -> [Int]
oddItems = filter odd

main :: IO ()
main = do
    print (oddItems [1, 2, 3, 4, 5, 6, 7, 8, 9])  -- Expected output: [1, 3, 5, 7, 9]
    print (oddItems [10, 12, 14])                -- Expected output: []
    print (oddItems [11, 13, 15])                -- Expected output: [11, 13, 15]

