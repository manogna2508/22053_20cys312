-- 3. Basic Functions

-- b. Square a number
square :: Int -> Int
square x = x * x

mainSquare :: IO ()
mainSquare = do
    putStrLn "Enter an integer to find its square:"
    x <- readLn :: IO Int  -- specify the type as an Int
    putStrLn $ "Square: " ++ show (square x)

main :: IO ()
main = mainSquare

