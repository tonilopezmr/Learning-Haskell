repeated :: Int -> [Int] -> Int
repeated x [] = 0
repeated x xs 
		| x == last xs = 1 + repeated x (init xs)
		| otherwise = 0 + repeated x (init xs)