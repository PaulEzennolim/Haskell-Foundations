{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE UndecidableInstances #-}

module TypesExercises where

import Data.Kind (Type)

-- Shared Definition of Natural Numbers and Addition

-- Define the data kind for natural numbers
data Nat = Zero | Succ Nat

-- Define the type family for type-level addition
type family Add (n :: Nat) (m :: Nat) :: Nat where
  Add 'Zero m       = m
  Add ('Succ n) m   = 'Succ (Add n m)

-- Exercise 1: Head and Tail for Heterogeneous Lists

-- Define the HList type
data HList (xs :: [Type]) where
  HNil  :: HList '[]
  HCons :: x -> HList xs -> HList (x ': xs)

-- hHead extracts the first element of the HList
hHead :: HList (x ': xs) -> x
hHead (HCons x _) = x

-- hTail extracts the tail of the HList
hTail :: HList (x ': xs) -> HList xs
hTail (HCons _ xs) = xs

-- Exercise 2: Natural Numbers

-- Already defined above: `data Nat = Zero | Succ Nat`

-- Exercise 3: Type Family for Addition

-- Already defined above: `type family Add (n :: Nat) (m :: Nat) :: Nat`

-- Exercise 4: Vectors

-- Define the Vector type
data Vector (n :: Nat) (a :: Type) where
  VNil  :: Vector 'Zero a                   -- A vector of length 0
  VCons :: a -> Vector n a -> Vector ('Succ n) a -- A vector of length n+1

-- Exercise 5: Convert List to Vector

-- Type class to convert a list to a vector
class ToVector (n :: Nat) where
  toVector :: [a] -> Maybe (Vector n a)

-- Base case: Empty list corresponds to an empty vector
instance ToVector 'Zero where
  toVector [] = Just VNil
  toVector _  = Nothing -- Invalid if the list is not empty

-- Recursive case: Non-empty list corresponds to a vector of size 'Succ n
instance (ToVector n) => ToVector ('Succ n) where
  toVector (x:xs) = do
    rest <- toVector xs
    return $ VCons x rest
  toVector [] = Nothing -- Invalid if the list is too short

-- Exercise 6: Append for Vectors

-- vecAppend function
vecAppend :: Vector n a -> Vector m a -> Vector (Add n m) a
vecAppend VNil v         = v
vecAppend (VCons x xs) v = VCons x (vecAppend xs v)