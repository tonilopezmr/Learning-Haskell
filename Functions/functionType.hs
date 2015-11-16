functionType :: Int -> Int -> Int
functionType 1 1 = 0
functionType _ 5 = 0
functionType x y = if x+y > 10 then (x+y)-10 else x+y