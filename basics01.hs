myHead (cab:corpo) = cab

myTail (cab:corpo) = corpo

myInit (cab:corpo) 
    | corpo == [] = []
    | otherwise = cab:(myInit corpo)

myLast (cab:corpo)
    | corpo == [] = cab
    | otherwise = myLast corpo

myLenght [] = 0
myLenght (cab:corpo) = 1 + myLenght corpo

myNull lista
    | lista == [] = True
    | otherwise = False

myReverse [] = []
myReverse (cab:corpo) = (myReverse corpo) ++ [cab]

myTake_aux x (cab:corpo) cont
    | cont == x = []
    | otherwise = cab: (myTake_aux x (corpo) (cont+1)) 

myTake x (cab:corpo) = myTake_aux x (cab:corpo) 0

myDrop_aux x (cab:corpo) cont
    | x > (myLenght (cab:corpo)) = []
    | cont == x = (cab:corpo)
    | otherwise = (myDrop_aux x (corpo) (cont+1))

myDrop x (cab:corpo) = myDrop_aux x (cab:corpo) 0
