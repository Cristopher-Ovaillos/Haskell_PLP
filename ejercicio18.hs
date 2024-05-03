
justificarCentro :: Int -> String -> String
justificarCentro n st 
--ver si la longitud de n es mayor al del tamanio del string ahi devolver el string sin cambios
    | tamanioSt>=n = st
--en otro caso agregar espacios, en este caso si es impar el tamanio de n y par el st voy a generar un espacio de mas en el izq
    | otherwise = espacioIzq++ st ++espacioDer
        where
            tamanioSt = length st
            espacio = (n - tamanioSt) `div` 2
            --veo si es impar entonces agrego un espacio de mas
            espacioAux = (n - tamanioSt) `mod` 2
            espacioDer= generarEspacio (espacio)
            espacioIzq = generarEspacio (espacio) ++generarEspacio (espacioAux)
            
generarEspacio :: Int -> String
generarEspacio n
    | n == 0 = ""
    | n == 1 = "_"
    | otherwise = "_" ++ generarEspacio (n-1)

main :: IO ()
main = putStr (justificarCentro 5 "do")