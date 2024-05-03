factorial :: Int -> Int 
factorial x
    | x == 0 = 1
    | x == 1 = 1
    | otherwise = x*(factorial(x-1)) 


-- n vas a ser la filas y m las columnas
factoriableTable :: Int -> Int -> String
factoriableTable m n --Método que genera una tablita con los factoriales--
    | ( m > n ) = " No es posible plantear la tabla :( sorry"
        --El \t me permite alinear los valores--
    | m == n = show m ++ "!\t" ++ show (factorial m)
    | otherwise = show m ++ "!\t" ++ show (factorial m) ++ "\n" ++ factoriableTable (m + 1) n


main :: IO ()
main = putStr (factoriableTable 2 3)