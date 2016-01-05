data BinTreeInt  = Void | Node Int BinTreeInt BinTreeInt deriving Show

dupElem :: BinTreeInt -> BinTreeInt
dupElem Void = Voidf
dupElem (Node n Void Void) = (Node (n*2) Void Void)
dupElem (Node n a b) = (Node (n*2) (dupElem a) (dupElem b))