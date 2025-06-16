-- Function last' returns the last element of a list
last' :: [a] -> a
last' [x]    = x           -- Base case: if the list has one element, return that element
last' (_:xs) = last' xs     -- Recursive case: discard the head and process the tail
