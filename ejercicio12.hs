charAInt::Char->Int 
charAInt a = fromEnum a - fromEnum '0'

main :: IO ()
main = print (charAInt '4')
