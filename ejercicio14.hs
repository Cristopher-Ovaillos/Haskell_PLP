entreLineas :: String -> String -> String -> String
entreLineas s1 s2 s3 = s1 ++ "\n" ++ s2 ++ "\n" ++ s3
main :: IO ()
main = putStr (entreLineas "Primera línea" "Segunda línea" "Tercera línea")
