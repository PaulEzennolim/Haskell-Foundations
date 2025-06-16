-- The function 'pyths' takes an integer 'n' and returns a list of triples (Int, Int, Int).
pyths :: Int -> [(Int, Int, Int)]
-- Each triple represents a Pythagorean triple where x^2 + y^2 = z^2, and x, y, z are bounded by 'n'.
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]
