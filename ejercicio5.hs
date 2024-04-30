fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n 
    | n > 1 = fib (n-2) + fib (n-1)
    | otherwise = 0

sumatoria :: Int -> Int