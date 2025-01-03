sumIntegers :: Int -> Int -> Int
sumIntegers x y = x + y

main :: IO ()
main = do
    putStrLn "Enter the first integer:"
    x <- readLn :: IO Int
    putStrLn "Enter the second integer:"
    y <- readLn :: IO Int
    let result = sumIntegers x y
    putStrLn ("The sum of the integers is: " ++ show result)

