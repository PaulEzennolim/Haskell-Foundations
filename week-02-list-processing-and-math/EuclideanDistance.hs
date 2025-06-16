-- Function to compute the Euclidean distance between two points (x1, y1) and (x2, y2)
-- Type signature: the function takes two pairs of floating-point numbers (x1, y1) and (x2, y2) 
-- and returns a floating-point number.
euclideanDistance :: Floating a => (a, a) -> (a, a) -> a 
euclideanDistance (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

main :: IO () 
-- Calls 'euclideanDistance' with two points (1, 2) and (4, 6)
main = print (euclideanDistance (1, 2) (4, 6))
    