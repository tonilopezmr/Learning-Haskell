selectEvenPos :: [Int] -> [Int]
selectEvenPos xs = [x+1 | x <- [0..(length xs)-1], even (xs!!x)]