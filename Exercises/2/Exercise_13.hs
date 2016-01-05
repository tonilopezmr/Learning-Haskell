eje13 :: [Int] -> Int
eje13 xs = sum (filter even (map (^2) xs))