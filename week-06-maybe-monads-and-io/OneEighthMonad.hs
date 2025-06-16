import MaybeHalf (maybeHalf)  -- Importing maybeHalf from MaybeHalf.hs

-- maybeEighth function takes an integer 'a' and returns a Maybe Int,
-- representing one-eighth of the input if an integer eighth can be computed.
-- This is achieved by chaining three calls to maybeHalf, which divides
-- the input by 2 if it is even, otherwise returns Nothing.

maybeEighth :: Int -> Maybe Int
maybeEighth a = maybeHalf a >>= maybeHalf >>= maybeHalf
