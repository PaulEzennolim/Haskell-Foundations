-- Define the function 'halve' that takes a list and splits it into two halves
halve :: [a] -> ([a], [a])  -- Type signature: 'halve' takes a list of any type 'a' and returns a tuple of two lists of the same type.
halve xs = splitAt n xs     -- 'splitAt n xs' splits the list 'xs' into two parts: the first 'n' elements, and the rest.
  where n = length xs `div` 2  -- 'n' is defined as half the length of the list. 'length xs' gives the number of elements in the list, and we divide by 2 to find the midpoint.

-- 'main' is the entry point of the program where the result of 'halve' is printed.
main :: IO ()  -- 'main' is an IO action that doesn't return a value (hence the '()').
main = print (halve [1, 2, 3, 4, 5, 6])  -- 'print' prints the result of 'halve' applied to the list [1, 2, 3, 4, 5, 6].
