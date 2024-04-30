allEqual :: Int -> Int -> Int -> Bool 
allEqual x y z = (x == y) && (y == z)

losCuatroIguales :: Int -> Int -> Int -> Int -> Bool
losCuatroIguales x y z w = (allEqual x y z) && x == w

boolToString :: Bool -> String
boolToString b 
    | b == True = "Verdadero"
    | otherwise = "Falso"

main = putStrLn (boolToString (losCuatroIguales 3 3 3 3))
