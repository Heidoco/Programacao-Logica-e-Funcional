import System.IO (isEOF)

main :: IO()
main = do
    --Verifica se é end of file
    done <- isEOF
    if done
        --Se for final nao faz nada
        then return ()
        else do
            --Recebe a linha
            linha <- getLine
            --Define as variaveis a b c
            let [a, b, c] = map read (words linha) :: [Int]
            calculacaneta a b c
            --chama a main novamente
            main

--Mdc algoritmo de Euclides
mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (mod a b)

calculacaneta :: Int -> Int -> Int -> IO ()
calculacaneta a b c = do
    --Se a quantidade de canetas podem ser distribuidos em pacotes que possuam somente da mesma cor então sim.
    if (div a (mdc a b) + div b (mdc a b)) >= c
        then putStrLn ("sim")
        else putStrLn ("nao")