generar :: Int -> String
generar a
    | a == 0 = ""
    | otherwise = 
        let num1 = a `mod` 10  -- obtengo el digito (entero)
            num2 = a `div` 10  -- obtengo el resto de dgitos (entero)
            st = canNumeros num1 num1
        in generar num2 ++ st ++ "\n" 

canNumeros :: Int -> Int -> String
canNumeros a b
    | b == 0 = ""
    | otherwise = show a ++ canNumeros a (b-1)

main :: IO ()
main = do
    let a = 1534
        resultado = generar a
    putStrLn resultado
