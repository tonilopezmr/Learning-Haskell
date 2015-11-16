--guards
twoNumbers :: Int -> Int -> Int
twoNumbers x y
	|  bmi > 10 = x-y
	|  bmi > y-constant = x+y
	|  bmi == 0 = x*y
	| otherwise = 11
	where bmi = x - 10
		constant = 22