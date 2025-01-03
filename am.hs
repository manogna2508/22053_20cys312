-- 3. Basic Functions

-- a. Compose functions to add and multiply
addThenMultiply :: Int -> Int -> Int -> Int
addThenMultiply x y z = (x + y) * z

mainAddThenMultiply :: IO ()
mainAddThenMultiply = do
    putStrLn "Enter two integers to add and a third integer to multiply the result (e.g., 1 2 3):"
    [x, y, z] <- map read . words <$> getLine :: IO [Int]  -- specify the type as a list of Ints
    putStrLn $ "Add Then Multiply: " ++ show (addThenMultiply x y z)

main :: IO ()
main = mainAddThenMultiply

