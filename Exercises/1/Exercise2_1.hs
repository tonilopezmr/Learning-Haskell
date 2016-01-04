import Data.Char
numBet :: Char -> Char -> Int
numBet a b = abs ((ord a) - (ord b)) -1