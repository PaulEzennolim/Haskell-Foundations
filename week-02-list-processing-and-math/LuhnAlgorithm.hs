-- Function 'luhnDouble' takes an integer 'x', doubles it, and subtracts 9 if the result is greater than 9.
luhnDouble :: Int -> Int
luhnDouble x = if x * 2 > 9 then x * 2 - 9 else x * 2

-- Function 'luhn' takes four integers representing a four-digit card number.
-- It applies the Luhn algorithm to determine if the card number is valid.
luhn :: Int -> Int -> Int -> Int -> Bool
luhn d1 d2 d3 d4 =
    -- 'luhnDouble d1' doubles the first digit (d1) and applies the Luhn rule.
    -- 'd2' remains as it is (no need to double the second digit).
    -- 'luhnDouble d3' doubles the third digit (d3) and applies the Luhn rule.
    -- 'd4' remains as it is (no need to double the fourth digit).
    let total = luhnDouble d1 + d2 + luhnDouble d3 + d4 -- Sum the values from the above operations to get the 'total'.
    in total `mod` 10 == 0 -- Then, use 'mod 10' to check if the total is divisible by 10.
    