-- Function to check if a number is even
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

-- Main function for the even check
mainIsEven :: IO ()
mainIsEven = do
    putStrLn "Enter an integer to check if it's even or odd:"
    x <- readLn -- Reads an integer input from the user
    putStrLn $ "Is Even: " ++ show (isEven x)

-- The required main function as the program's entry point
main :: IO ()
main = mainIsEven

