type Par =(Int, Int)

menMayor:: Par->Par->Par->Par
menMayor (a,b) (c,d) (e,f) = (menor , mayor )
    where 
        menor=min a (min b (min c (min d (min e f))))
        mayor=max a (max b (max c (max d (max e f))))

main :: IO ()
main = do
    let par1 = (2, 4)
        par2 = (3, 5)
        par3 = (4, 1)
        resultado = menMayor par1 par2 par3
    putStrLn (show resultado)