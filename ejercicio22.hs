type Nombre = String
type Telefono = String
type Directorio = [(Nombre, Telefono)]

type Titulo = String
type Autor = String
type Editorial = String

type Libro = (Titulo, Autor, Editorial)
type BaseDeDatosLibros = [Libro]

numeros :: Directorio
numeros = [("Silvia amaro", "2991231234")]

agregarContacto :: Directorio -> (Nombre, Telefono) -> Directorio
agregarContacto directorio nuevoContacto = directorio ++ [nuevoContacto]



main :: IO ()
main = do
    putStrLn (show numeros)
    let numerosActualizados = agregarContacto numeros ("Belen", "123123")
    putStrLn "actualizo"
    putStrLn (show numerosActualizados)