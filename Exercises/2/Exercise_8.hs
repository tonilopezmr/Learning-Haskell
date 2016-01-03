selectEven :: [Int] -> [Int]
selectEven [] = []
selectEven xs 
	| even (last xs) = selectEven (init xs) ++ [last xs]
	| otherwise = selectEven (init xs)