main :: IO()
main = do
    --recebe a quantidade de casos
    ncasos <- readLn :: IO Int
    --repete a funcao para cada caso
    faznvezes ncasos

somatriangulo 0 = 0
--soma do triangulo é a soma de todas as linhas a soma da linha é 2^(n-1)
somatriangulo nlinhas = (\nlinha -> 2^(nlinha-1)) nlinhas + somatriangulo (nlinhas-1) 

--repete a função para a quantidade de casos
faznvezes 0 = return()
faznvezes ncasos = do
    --recebe a quantidade de linhas do triangulo de pascal
    nlinhas <- readLn :: IO Int
    --Moostra o resultado da soma
    putStrLn (show(somatriangulo nlinhas))
    faznvezes (ncasos-1)