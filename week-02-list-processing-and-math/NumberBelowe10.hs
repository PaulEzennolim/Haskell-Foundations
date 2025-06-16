choose :: (Ord a, Num a) => [(Bool, a)] -> [(Bool, a)]
-- 'filter' takes a predicate and a list, returning only the elements that satisfy the predicate.
choose = filter (\(b, x) -> b == True && x < 10)
-- Define the list of records (tuples of Bool and Int)
records = [(True,5), (False,7), (True,12), (True,8), (False,15), (True,4)]

main :: IO ()
main = print (choose records)
    -- 'choose records' applies the 'choose' function to the 'records' list
