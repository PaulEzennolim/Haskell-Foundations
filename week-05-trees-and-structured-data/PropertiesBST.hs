-- Define the binary tree (BST) data type
-- A Tree can be:
--   - Empty: representing an empty tree
--   - Node: containing a left subtree, a value of type `a`, and a right subtree
data Tree a = Empty | Node (Tree a) a (Tree a) deriving Show

-- a) Function to find the minimum element in a BST
-- The minimum element is the leftmost node in the tree
minBST :: Tree a -> Maybe a
minBST Empty = Nothing  -- An empty tree has no minimum
minBST (Node Empty x _) = Just x  -- If there's no left subtree, this node is the minimum
minBST (Node left _ _) = minBST left  -- Recur down the left subtree to find the minimum

-- b) Function to find the maximum element in a BST
-- The maximum element is the rightmost node in the tree
maxBST :: Tree a -> Maybe a
maxBST Empty = Nothing  -- An empty tree has no maximum
maxBST (Node _ x Empty) = Just x  -- If there's no right subtree, this node is the maximum
maxBST (Node _ _ right) = maxBST right  -- Recur down the right subtree to find the maximum

-- c) Function to find the successor of a given element in a BST
-- The successor is the smallest element greater than the given element
successor :: (Ord a) => Tree a -> a -> Maybe a
successor Empty _ = Nothing  -- No successor in an empty tree
successor (Node left x right) target
    | target < x = case successor left target of
        Nothing -> Just x  -- If there's no successor in the left subtree, this node is the successor
        justLeft -> justLeft  -- Otherwise, return the found successor in the left subtree
    | target > x = successor right target  -- Search right subtree if target > x
    | otherwise = minBST right  -- If target == x, successor is the minimum of the right subtree

-- d) Function to find the predecessor of a given element in a BST
-- The predecessor is the largest element smaller than the given element
predecessor :: (Ord a) => Tree a -> a -> Maybe a
predecessor Empty _ = Nothing  -- No predecessor in an empty tree
predecessor (Node left x right) target
    | target > x = case predecessor right target of
        Nothing -> Just x  -- If there's no predecessor in the right subtree, this node is the predecessor
        justRight -> justRight  -- Otherwise, return the found predecessor in the right subtree
    | target < x = predecessor left target  -- Search left subtree if target < x
    | otherwise = maxBST left  -- If target == x, predecessor is the maximum of the left subtree
