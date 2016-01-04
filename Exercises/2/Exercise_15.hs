data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show

numleaves (Leaf x)     = 1
numleaves (Branch a b) = numleaves a + numleaves b