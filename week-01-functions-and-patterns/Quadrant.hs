-- Function to determine the quadrant of a point (x, y)
quadrant :: (Int, Int) -> Int
-- Type signature: The function takes a pair of integers (x, y) representing the coordinates of a point and returns an integer indicating the quadrant number.

quadrant (x, y)
    | x > 0 && y > 0 = 1  -- If x > 0 and y > 0, the point is in Quadrant 1.
    | x < 0 && y > 0 = 2  -- If x < 0 and y > 0, the point is in Quadrant 2.
    | x < 0 && y < 0 = 3  -- If x < 0 and y < 0, the point is in Quadrant 3.
    | x > 0 && y < 0 = 4  -- If x > 0 and y < 0, the point is in Quadrant 4.

main :: IO ()
main = do
    -- Testing different points in various quadrants
    print (quadrant (3, 5))    -- Expected output: 1 (Quadrant 1)
    print (quadrant (-3, 5))   -- Expected output: 2 (Quadrant 2)
    print (quadrant (-3, -5))  -- Expected output: 3 (Quadrant 3)
    print (quadrant (3, -5))   -- Expected output: 4 (Quadrant 4)
