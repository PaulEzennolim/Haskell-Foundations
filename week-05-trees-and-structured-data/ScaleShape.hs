-- Define the Shape data type with Circle and Rect constructors
data Shape = Circle Float | Rect Float Float deriving (Eq, Show)

-- Define a helper function to calculate the perimeter of a Shape
perimeter :: Shape -> Float
perimeter (Circle r) = 2 * pi * r              -- Perimeter of a circle: 2 * π * radius
perimeter (Rect w h) = 2 * (w + h)             -- Perimeter of a rectangle: 2 * (width + height)

-- Implement the Ord instance to compare shapes by their perimeter
instance Ord Shape where
    compare s1 s2 = compare (perimeter s1) (perimeter s2)
    -- This compares two Shape values s1 and s2 by comparing their perimeters.
    -- If perimeter s1 < perimeter s2, then s1 < s2, and so on.

-- Define the scale function to scale a shape's dimensions by a given factor
scale :: Float -> Shape -> Shape
scale factor (Circle r) = Circle (factor * r)          -- Scale the radius of a Circle
scale factor (Rect w h) = Rect (factor * w) (factor * h) -- Scale both width and height of a Rect
