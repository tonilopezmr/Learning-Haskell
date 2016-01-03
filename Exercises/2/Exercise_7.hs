concat' :: [[a]] -> [a]
concat' [] = []
concat' xs = concat' (init xs) ++ last xs