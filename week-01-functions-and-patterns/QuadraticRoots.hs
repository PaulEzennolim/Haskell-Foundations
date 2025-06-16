-- Function to calculate the real roots of a quadratic equation ax^2 + bx + c = 0
solutions :: (Floating a, Ord a) => a -> a -> a -> [a]
-- Type signature: The function takes three arguments 'a', 'b', and 'c' (the coefficients of the quadratic equation).
-- The function returns a list of real roots (of type 'a').

solutions a b c
    | discriminant > 0  = [(-b + sqrt discriminant) / (2 * a), (-b - sqrt discriminant) / (2 * a)]
    -- If the discriminant is positive, there are two distinct real roots.
    | discriminant == 0 = [(-b) / (2 * a), (-b) / (2 * a)]
    -- If the discriminant is zero, there is one real root (return it twice).
    | otherwise         = []
    -- If the discriminant is negative, there are no real roots (return an empty list).
  where
    discriminant = b^2 - 4 * a * c  -- Calculate the discriminant: b^2 - 4ac

main :: IO ()
main = do
    -- Testing solutions for different quadratic equations
    print (solutions 1 (-2) 1)    -- Expected output: [1.0, 1.0] (single root)
    print (solutions 1 3 2)       -- Expected output: [-1.0, -2.0] (two distinct roots)
    print (solutions 1 0 1)       -- Expected output: [] (no real roots, discriminant is negative)

