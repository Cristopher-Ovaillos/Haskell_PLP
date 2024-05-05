ordenTriple :: (Int, Int, Int) -> (Int, Int, Int)
ordenTriple (a, b, c)
--solo accedo a la primera condicion que se cumple
    | a > b = ordenTriple (b, a, c)
    | b > c = ordenTriple (a, c, b)
    | otherwise = (a, b, c)

main :: IO ()
main = do
    let evaluar = (3, 2, 3)
        result = ordenTriple evaluar
    putStrLn (show result)