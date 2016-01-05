data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

symmetric (Leaf x) = (Leaf x)
symmetric (Branch a b) = (Branch (symmetric b)  (symmetric a))