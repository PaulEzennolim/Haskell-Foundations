-- Define the Result data type
data Result a = Success a       -- Holds a successful result of type a
              | Failure String  -- Holds an error message in case of failure
              deriving (Show, Eq)  -- Adding Show and Eq for easier testing and debugging

-- Functor instance for Result
instance Functor Result where
  -- fmap applies a function to the value in Success, leaves Failure unchanged
  fmap _ (Failure msg) = Failure msg   -- If Failure, return it unchanged
  fmap f (Success x)   = Success (f x) -- If Success, apply f to the value inside

-- Applicative instance for Result
instance Applicative Result where
  -- pure wraps a value in Success
  pure = Success                 -- Creates a Success from a value

  -- Applying functions wrapped in Result
  Failure msg <*> _ = Failure msg        -- If function side is Failure, return Failure
  _ <*> Failure msg = Failure msg        -- If value side is Failure, return Failure
  Success f <*> Success x = Success (f x) -- If both are Success, apply the function
