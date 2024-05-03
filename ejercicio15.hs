duplicar :: String -> Int -> String
duplicar s n 
    | n == 0 = ""
    | otherwise = duplicar s (n-1) ++" "++ s
-- puedo usar show para convertir a cadena un numero por si las dudas
main :: IO ()
main = putStr (duplicar "Hola" 3)