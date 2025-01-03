-- a. Increment each element
incrementEach :: [Int] -> [Int]
incrementEach = map (+1)

mainIncrementEach :: IO ()
mainIncrementEach = do
    putStrLn "Enter a list of integers to increment each element (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]  -- specify the type as a list of Ints
    putStrLn $ "Incremented List: " ++ show (incrementEach xs)

main :: IO ()
main = mainIncrementEach

