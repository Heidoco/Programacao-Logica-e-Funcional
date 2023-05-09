import Data.List

main :: IO ()
main = do
    -- lê um inteiro
    n <- readLn :: IO Int
    cesarnvezes n

-- Recebe uma lista de char e um número inteiro e retorna outra lista de char
cesar :: [Char] -> Int -> [Char]
cesar frase rotacao =
    -- Define o alfabeto como uma lista de caracteres de A a Z
    let alfabeto = ['A'..'Z']
        -- Define a função cifra que recebe um caractere e retorna outro caractere
        cifra c = case findIndex (==c) alfabeto of
            -- Rotaciona o caractere
            Just i -> alfabeto !! ((i - rotacao) `mod` 26)
            -- Precisa colocar se não quebra o codigo
            Nothing -> c
    -- aplica a função cifra em toda a frase
    in map cifra frase

-- recebe um número inteiro e realiza a cifra de César n vezes
cesarnvezes :: Int -> IO()
-- se n for zero, não faz nada
cesarnvezes 0 = return ()
cesarnvezes n = do
    --lê uma string da entrada
    frase <- getLine 
    --qual foi a rotacao usada
    rotacao <- readLn :: IO Int
    --imprime a string rotacionada
    putStrLn (cesar frase rotacao)
    --chama a propria função
    cesarnvezes (n-1)
