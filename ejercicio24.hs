
generar :: Int -> IO ()
generar a
    | a == 0 = return ()
    | otherwise = do
        let num1 = a `mod` 10  -- obtengo el digito (entero)
            num2 = a `div` 10  -- obtengo el resto de digitos (entero)
        generar num2
        putStrLn (canNumeros num1 num1)
       

canNumeros :: Int -> Int -> String
canNumeros a b
    | b == 0 = ""
    | otherwise = show a ++ canNumeros a (b-1)

main :: IO ()
main = do
    let a = 1534
    generar a
