-- Define the binary tree data type
-- A Tree can either be:
--   - Empty: representing an empty tree
--   - Node: containing a left subtree, a value of type `a`, and a right subtree
data Tree a = Empty | Node (Tree a) a (Tree a) deriving Show

-- Define the `balance` function
-- This function takes a non-empty list and converts it into a balanced binary tree
balance :: [a] -> Tree a

-- Base case: if the list is empty, we return an Empty tree
balance [] = Empty

-- Recursive case: if the list is non-empty, we split it to construct a balanced tree
balance xs = 
    let 
        -- Find the middle index of the list
        mid = length xs `div` 2

        -- Get the left half of the list (elements before the middle)
        leftList = take mid xs

        -- Get the right half of the list (elements after the middle)
        rightList = drop (mid + 1) xs

        -- Select the middle element as the root of the current subtree
        root = xs !! mid
    in 
        -- Recursively construct the left and right subtrees
        -- The current root is `root`, the left subtree is `balance leftList`,
        -- and the right subtree is `balance rightList`
        Node (balance leftList) root (balance rightList)
