contarElementos :: [Integer] -> Int
contarElementos [] = 0
contarElementos (_ : xs) = 1 + contarElementos xs

somaLista :: [Integer] -> Float
somaLista [] = 0
somaLista (x:xs) = (fromIntegral x) + (somaLista xs)

mediaLista :: [Integer] -> Float
mediaLista [] = 0.0
mediaLista xs = (somaLista xs) / (fromIntegral (contarElementos xs))