-- Function to return the first word in a string
-- Type signature: 'firstWord' takes a String as input and returns a String (the first word).
firstWord :: String -> String
firstWord = head . words
    -- 'words' splits the input string into a list of words, splitting on whitespace.
    -- 'head' takes the first word from the list produced by 'words'.
    -- 'head . words' is function composition: first 'words' splits the string, then 'head' extracts the first word.

-- Example usage in main
main :: IO ()
main = do
    print (firstWord "a test string")  -- Output: "a"
    print (firstWord "   the trickier test string")  -- Output: "the"
    -- The function ignores extra leading spaces, thanks to 'words', and still returns the first actual word.
