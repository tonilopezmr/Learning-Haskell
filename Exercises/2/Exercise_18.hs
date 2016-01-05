data BinTreeInt  = Void | Node Int BinTreeInt BinTreeInt deriving Show

insTree :: Int -> BinTreeInt -> BinTreeInt
insTree x Void = (Node x) Void Void
insTree x (Node n a b)
	| x > n = (Node n a (insTree x b))
	| otherwise = (Node n (insTree x a) b)