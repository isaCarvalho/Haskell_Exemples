minimo x y 
    | x  < y = x
    | otherwise = y

maximo x y
    | x > y = x
    | otherwise = y

isEqual x y
    | x == y = True
    | otherwise = False

isDiferent x y
    | x == y = False
    | otherwise = True

doubleMe x = x * 2
