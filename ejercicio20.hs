maxOcurr :: Int -> Int -> (Int, Int)
maxOcurr a b
    | a > b = (a, 1)
    | b > a = (b, 1)
    | otherwise = (a, 2)

maxOcurrTres :: Int -> Int -> Int -> (Int, Int)
maxOcurrTres a b c
    | a >= b && a >= c = (a, contarOcurrencias a a b c)
    | b > a && b > c = (b, contarOcurrencias b a b c)
    | otherwise = (c, contarOcurrencias c a b c)

contarOcurrencias :: Int -> Int -> Int -> Int -> Int
contarOcurrencias maximo a b c
    | maximo == a && maximo == b && maximo == c = 3
    | maximo == a && maximo == b || maximo == a && maximo == c || maximo == b && maximo == c = 2
    | otherwise = 1

main :: IO ()
main = do
    let valores = maxOcurr 3 1  
        valores2 = maxOcurrTres 1 4 4 
    putStrLn ("contar2Ocurrencia " ++ show valores ++ " contar3ocurrencias: " ++ show valores2)
