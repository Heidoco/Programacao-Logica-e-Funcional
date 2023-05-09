-- (\x -> x^2 + 8*x + 10) 10
-- f = (\x -> x^2 + 8*x + 10)
-- f 10
-- map f [20,30,40,50]
-- map (\x -> x^2 + 8*x + 10) [20,30,40,50]

--Pode ser declarado assim, depois se usa f 3 por exemplo.
f = (\x -> x**2 + 8*x + 10)

main :: IO()
main = do
    let valores = [10,20,30,40]
    --Todos os valores da lista passam pela função
    let valoresf = map (\x -> x**2 + 8*x + 10) valores
    
    let valoresl = map f valores

    --Printando o resultado depois da função aplicada.
    putStrLn(unwords (map show valoresf))
    putStrLn(unwords (map show valoresl))



