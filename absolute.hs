-- c. Absolute value
absolute :: Float -> Float
absolute x = if x < 0 then -x else x

mainAbsolute :: IO ()
mainAbsolute = do
    putStrLn "Enter a float to find its absolute value:"
    x <- readLn
    putStrLn $ "Absolute Value: " ++ show (absolute x)

-- Entry point for the program
main :: IO ()
main = mainAbsolute
