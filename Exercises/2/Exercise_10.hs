module Exercise_10 where

	iSort :: [Int] -> [Int]	
	iSort [] = []		
	iSort xs = ins (head xs) (iSort (tail xs))

	ins :: Int -> [Int] -> [Int]	
 	ins x xs = [y | y <- xs, y <= x] ++ [x] ++ [z | z <- xs, z > x]