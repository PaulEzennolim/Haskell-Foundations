import Data.List ( intercalate, transpose, genericReplicate )

-- The main function that takes a list of integers and returns a histogram as a String
histogram :: [Integer] -> String
histogram xs = 
    let
        -- Count occurrences of each number from 0 to 9
        counts = [length (filter (== n) xs) | n <- [0..9]]
        
        -- Create the histogram lines by mapping counts to rows of '*'
        -- We construct lines from top to bottom, using `transpose` to vertically align each count
        histogramLines = map (row counts) [maximum counts, maximum counts - 1 .. 1]
        
        -- The bottom line of the histogram and the number labels
        separator = replicate 10 '='
        labels = "0123456789"
    in
        -- Combine everything into a formatted string using unlines
        unlines (histogramLines ++ [separator, labels])

-- Helper function to create a single row in the histogram based on the counts and current level
-- If the count for a number is >= the current level, add '*', otherwise add a space
row :: [Int] -> Int -> String
row counts level = [if count >= level then '*' else ' ' | count <- counts]
