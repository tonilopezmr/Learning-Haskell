type Height = Float
type Width  = Float
type Radius = Float
data Rectangle  = Rectangle Height Width 
data Circle = Circle Radius

class Shape a where
   area :: a -> Float
   perimeter :: a -> Float
   show :: a -> String
   (==) :: a -> a -> Bool

instance Shape Rectangle where
   area (Rectangle h w) = h * w
   perimeter (Rectangle h w) = (h*2) * (w*2)
   show (Rectangle h w)= "Height: "++ (Prelude.show h) ++ " Width: "++ (Prelude.show w)
   (==) (Rectangle h w) (Rectangle h1 w1) = h Prelude.== h1 && h Prelude.==w1 
   
instance Shape Circle where
   area (Circle r) = pi * r**2
   perimeter (Circle r) = 2 * pi * r   
   show (Circle r) = "Circle radio: " ++ (Prelude.show r)
   (==) (Circle r) (Circle r1) = r Prelude.== r1

type Volume = Float
volumePrism :: (Shape a) => a -> Height -> Volume
volumePrism base height = (area base) * height