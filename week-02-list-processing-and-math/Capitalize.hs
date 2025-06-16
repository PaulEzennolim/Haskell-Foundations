import Data.Char (toUpper)

-- Helper function that capitalizes the first letter of a word
capitalizeFirst :: String -> String
capitalizeFirst "" = ""  -- If the string is empty, return it as is
capitalizeFirst (x:xs) = toUpper x : xs  -- Capitalize the first letter and append the rest of the string

capitalize :: String -> String
    -- 'words str' splits the string into a list of words
    -- 'capitalizeFirst word' capitalizes the first letter of each word
    -- 'unwords' joins the list of capitalized words back into a single string
capitalize str = unwords [capitalizeFirst word | word <- words str]