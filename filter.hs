-- b. Filter even numbers
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

filterEven :: [Int] -> [Int]
filterEven = filter isEven

mainFilterEven :: IO ()
mainFilterEven = do
    putStrLn "Enter a list of integers to filter even numbers (e.g., [1,2,3,4]):"
    xs <- readLn
    putStrLn $ "Filtered Even Numbers: " ++ show (filterEven xs)

main :: IO ()
main = mainFilterEven

