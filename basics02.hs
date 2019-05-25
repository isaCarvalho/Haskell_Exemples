soma a b = a + b

fat x 
    | x == 1 = 1
    | otherwise = x * fat(x-1)

fib x
    | x == 1 = 1
    | x == 0 = 1
    | otherwise = fib(x-1) + fib(x-2)

fib2 0 = 1
fib2 1 = 1
fib2 x = fib2(x-1) + fib2(x-2)

meuLenght [] = 0
meuLenght (cab:corpo) = 1 + meuLenght (corpo) 

impares [] = []
impares (cab:corpo)
    | mod cab 2 == 0 = impares (corpo)
    | otherwise = [cab] ++ impares (corpo)