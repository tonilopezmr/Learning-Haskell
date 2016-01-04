leapyear :: Int -> Bool
leapyear year 
	| mod year 4 == 0 = True
	| mod year 100 == 0 = False
	| mod year 400 == 0 = True
	| otherwise = False