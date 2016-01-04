selectEvenPos :: [Int] -> [Int]
selectEvenPos xs = [xs!!x | x <- [0..(length xs)-1], even (x)]