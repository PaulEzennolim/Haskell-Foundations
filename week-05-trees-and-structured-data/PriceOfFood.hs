-- Define the Pastry data type with three kinds of pastries
-- Each type of pastry has a fixed price
data Pastry = Croissant | Eclair | Millefeuille deriving (Show)

-- Define the Fruit data type with two kinds of fruits, each with a weight (in kg)
-- The price depends on the weight provided
data Fruit = Banana Float | Apple Float deriving (Show)

-- Define the Price type class
-- The type class defines a function `price` that calculates the price of an item
class Price a where
    price :: a -> Float

-- Instance of Price for Pastry
-- Each type of pastry has a fixed price
instance Price Pastry where
    price Croissant = 2.5       -- Price of a croissant is 2.5
    price Eclair = 3.0          -- Price of an eclair is 3.0
    price Millefeuille = 5.0    -- Price of a millefeuille is 5.0

-- Instance of Price for Fruit
-- The price depends on the weight (in kg) of the fruit
instance Price Fruit where
    price (Banana weight) = weight * 1.6  -- Bananas cost 1.6 per kg
    price (Apple weight) = weight * 2.5   -- Apples cost 2.5 per kg

-- Instance of Price for Maybe values
-- If the item is `Nothing`, the price is 0. Otherwise, calculate the price of the contained item
instance Price a => Price (Maybe a) where
    price Nothing = 0           -- Nothing has a price of 0
    price (Just item) = price item  -- Use the price function for `Just` items

-- Instance of Price for lists
-- The total price is the sum of the prices of all items in the list
instance Price a => Price [a] where
    price items = sum (map price items)  -- Map `price` over the list and sum the results
