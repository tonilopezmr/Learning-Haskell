data Tree a = Branch a (Tree a) (Tree a) | Void deriving Show

countProperty :: (a -> Bool) -> (Tree a) -> Int
countProperty f Void = 0
countProperty f (Branch x a b) = if f x then 1 + (countProperty f a) + (countProperty f b)
	else 0 + (countProperty f a) + (countProperty f b)