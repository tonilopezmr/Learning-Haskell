map'	:: (a -> b) -> [a] -> [b]
map' f xs = [f x | x <- xs]

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p xs = [x | x <- xs, p x]
