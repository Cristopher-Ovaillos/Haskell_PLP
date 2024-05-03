digitoRomano :: Char -> String
digitoRomano a = case a of
    '1' -> "I"
    '2' -> "II"
    '3' -> "III"
    '4' -> "IV"
    '5' -> "V"
    '6' -> "VI"
    '7' -> "VII"
    '8' -> "VIII"
    '9' -> "IX"
    _   -> "No es un dgito vAlido"
main :: IO ()
main = print (digitoRomano '4')