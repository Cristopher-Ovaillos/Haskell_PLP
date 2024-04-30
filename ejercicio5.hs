fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n 
    | n > 1 = fib (n-2) + fib (n-1)
    | otherwise = 0

factorial :: Int -> Int 
factorial x
    | x == 0 = 1
    | x == 1 = 1
    | otherwise = x*(factorial(x-1)) 

sumatoria :: Int -> Int -> Int
sumatoria i n
    | i == 1 = 1
    | otherwise = i^n + sumatoria (i-1) n
--sumatoria i n donde i= (i-1) calculo de n hacia 1 osea i =n al principio
--fromIntegral Convierte de Enteros (Int o Integer) a Números (Int, Integer, Float, Double, etc.) TEORIA 23/36

sucesion :: Int -> Int -> Float
sucesion x n = fromIntegral(sumatoria n n) / fromIntegral (factorial x)


