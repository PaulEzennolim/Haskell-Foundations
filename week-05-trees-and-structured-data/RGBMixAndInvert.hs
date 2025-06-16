-- Define the Color data type, which represents three basic colors and two transformations:
--   - Basic colors: Red, Green, Blue
--   - Transformations: Mix (average of two colors) and Invert (invert RGB values)
data Color = Red | Green | Blue | Mix Color Color | Invert Color

-- Define the `rgb` function, which returns the RGB values of a Color as a list of three Doubles
-- Each element in the list represents the red, green, and blue channels respectively
rgb :: Color -> [Double]

-- Base cases: RGB values for basic colors
rgb Red = [1, 0, 0]    -- Red is represented by full red intensity [1, 0, 0]
rgb Green = [0, 1, 0]  -- Green is represented by full green intensity [0, 1, 0]
rgb Blue = [0, 0, 1]   -- Blue is represented by full blue intensity [0, 0, 1]

-- Recursive case: Mix two colors by averaging each corresponding RGB component
-- We use `zipWith` to apply the average function component-wise to two RGB lists
rgb (Mix c1 c2) = 
    let rgb1 = rgb c1  -- Calculate RGB values for the first color
        rgb2 = rgb c2  -- Calculate RGB values for the second color
    in zipWith (\x y -> (x + y) / 2) rgb1 rgb2  -- Average each RGB component of rgb1 and rgb2

-- Recursive case: Invert a color by subtracting each RGB component from 1
-- We use `map` to apply the inversion operation to each RGB component
rgb (Invert c) = 
    let rgbValues = rgb c  -- Calculate RGB values for the color to be inverted
    in map (1 -) rgbValues  -- Invert each component by subtracting it from 1
