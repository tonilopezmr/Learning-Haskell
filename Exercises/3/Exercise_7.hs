type Height = Float
type Width  = Float
type Radius = Float
data Rectangle  = Rectangle Height Width 
data Circle = Circle Radius

class (Eq a, Show a) => Shape a where
   area :: a -> Float
   perimeter :: a -> Float

instance (Show a) => Show (Shape a) where
   show (Rectangle h w)= "Height: "++ h ++ " Width: "++ w
   show (Circle r) = "Circle radio: " ++ r

instance (Eq a) => Eq (Shape a) where
	(Rectangle w h)  == 	(Rectangle w1 h1) = w==w1 && h==h1
	(Rectangle h)  	== 	(Circle h2) 	= False
	(Circle h2)  	== 	(Rectangle h) 	= False
	(Circle r)  	== 	(Circle r2) 	= True

instance Shape Rectangle where
   area (Rectangle h w) = h * w
   perimeter (Rectangle h w) = (h*2) * (w*2)
   

instance Shape Circle where
   area (Circle r) = pi * r**2
   perimeter (Circle r) = 2 * pi * r   

type Volume = Float
volumePrism :: (Shape a) => a -> Height -> Volume
volumePrism base height = (area base) * height