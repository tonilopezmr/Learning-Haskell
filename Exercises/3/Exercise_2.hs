--in Stack.hs
instance (Eq a) => Eq (Stack a) where
	EmptyStack  == 	EmptyStack 	= True
	EmptyStack 	== 	(Stk x s) 	= False
	(Stk x s) 	== 	EmptyStack 	= False	
	(Stk x s) 	== 	(Stk y z) 	= x==y && s==z