data BinTreeInt  = Void | Node Int BinTreeInt BinTreeInt deriving Show

treeElem :: Int -> BinTreeInt -> Bool
treeElem x Void = False
treeElem x (Node n a b) 
	| x == n = True
	| otherwise = treeElem x a || treeElem x b