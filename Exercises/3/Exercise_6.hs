type Height = Float
type Width  = Float
type Radius = Float
data Rectangle  = Rectangle Height Width 
data Circle = Circle Radius

class Shape a where
   area :: a -> Float
   perimeter :: a -> Float

instance Shape Rectangle where
   area (Rectangle h w) = h * w
   perimeter (Rectangle h w) = (h*2) * (w*2)

instance Shape Circle where
   area (Circle r) = pi * r**2
   perimeter (Circle r) = 2 * pi * r

type Volume = Float
volumePrism :: (Shape a) => a -> Height -> Volume
volumePrism base height = (area base) * height

type Surface = Float
surfacePrism :: (Shape a) => a -> Height -> Surface
surfacePrism base height = (perimeter base)*2 * height --Puramente inventado