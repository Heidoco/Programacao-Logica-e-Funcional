dobro :: Double -> Double
dobro x = 2*x

incremento x = x + 1
decremento x = x - 1

main :: IO()
main = do
    putStrLn "Digite um número "
    n<- readLn :: IO Double
    putStrLn ("O dobro de " ++ show(n) ++ " é " ++ show(dobro n))

    putStrLn "Digite um número "
    n<- readLn :: IO Int
    putStrLn (show(n) ++ " + 1 = " ++ show(incremento n))

    putStrLn "Digite um número"
    n<- readLn :: IO Int
    putStrLn (show(n) ++ " - 1 = " ++ show(decremento n))