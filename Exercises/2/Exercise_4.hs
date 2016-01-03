member :: Int -> [Int] -> Bool
member x [] = False
member x xs = x `elem` xs