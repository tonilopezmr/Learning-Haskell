module Exercise5 where
	isPrime :: Int -> Bool
	isPrime x = length [ y | y <- [1..x], x `mod` y == 0] <= 2

	primes :: Int -> [Int]
	primes x = take x [y | y <- [1..], isPrime y]