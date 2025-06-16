-- Import Data.Char to use the toLower function for case-insensitive comparison
import Data.Char (toLower)

-- Define the Name data type, which wraps a single String representing a name
newtype Name = Name String deriving Show

-- Implement the Eq instance for Name, ignoring case
instance Eq Name where
    (==) (Name s1) (Name s2) = map toLower s1 == map toLower s2
    -- This compares two Name values by converting both `s1` and `s2` to lowercase.
    -- `map toLower s1` applies `toLower` to each character in `s1`, making it lowercase.
    -- The same is done for `s2`. If the lowercase versions of `s1` and `s2` are equal,
    -- the function returns True; otherwise, it returns False.
