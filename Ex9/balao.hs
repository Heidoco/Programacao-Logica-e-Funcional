main :: IO()
main = do
    --le os dois valores da linha
    linha <- getLine
    --coloca os dois valores para duas variaveis
    let [a, b] = map read (words linha)
    --Divide a quantidade de helio pelo volume da esfera, pega o piso para ficar com numero inteiro
    putStrLn (show $ (\raio quanth -> floor (quanth/((4/3) * (3.1415*(raio^3))))) a b)

