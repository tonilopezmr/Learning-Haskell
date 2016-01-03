import qualified Triangle
import qualified Circle
main = do
	putStrLn ("The circle area is " ++ show (Circle.area 2))
	putStrLn ("The triangle area is " ++ show (Triangle.area 4 5))