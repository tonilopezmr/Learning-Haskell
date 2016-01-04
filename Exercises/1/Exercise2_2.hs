sumRec :: Int -> Int -> Int
sumRec a b 
	| a > b = a + b + sumRec a (b+1)
	| a == b = a + b
	| otherwise = a + b + sumRec (a+1) b