import Stack
fromStack :: Stack a -> [a] 	
fromStack xs 
	| isEmpty xs = []
	| otherwise = [top xs] ++ fromStack (pop xs)

toStack :: [a] -> Stack a
toStack [] = empty
toStack xs = push (head xs) (toStack (tail xs))
