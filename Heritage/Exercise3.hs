import Stack
fromStack :: Stack a -> [a] 	
fromStack xs 
	| isEmpty xs = []
	| otherwise = [top xs] ++ fromStack (pop xs)

toStack :: [a] -> Stack a
toStack [] = empty
toStack xs = push (head xs) (toStack (tail xs))



poner:

instance (Show a) => Show (Stack a) where
   show EmptyStack = "|"
   show (Stk x y) = (show x) ++ " <- " ++ (show y)