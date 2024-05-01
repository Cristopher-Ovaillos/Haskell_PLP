funny :: Int->Int->Int->Bool
funny x y z
    |x > z =True
    |x>=y =False
    | otherwise =True

--Solo es verdadero con x>z y x<y ahi es true ya en otros casos es falso

funnyV2 x y z = ((x>z)||(x<y))
--Haskell infiere automaticamente que valore puede tener no es necesario en este caso poner que parametros puede tener