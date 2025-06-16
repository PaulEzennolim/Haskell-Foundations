-- Define the binary tree data type
data Tree a = Empty | Node (Tree a) a (Tree a) deriving Show

-- Helper function to calculate the size (number of nodes) in a tree
-- The function takes a Tree and returns an Int representing the total number of nodes
treeSize :: Tree a -> Int
treeSize Empty = 0  -- Base case: an empty tree has size 0
treeSize (Node left _ right) = 1 + treeSize left + treeSize right
    -- Recursive case: for a Node, the size is 1 (for the current node) 
    -- plus the sizes of the left and right subtrees

-- Function to check if a binary tree is complete
-- A binary tree is complete if every node has subtrees of equal size
isComplete :: Tree a -> Bool
isComplete Empty = True  -- An empty tree is trivially complete

-- Recursive case: for a Node, check two conditions:
--   1. The left and right subtrees must be of equal size
--   2. Both the left and right subtrees must themselves be complete
isComplete (Node left _ right) = 
    treeSize left == treeSize right && isComplete left && isComplete right
