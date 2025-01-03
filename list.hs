-- a. Sum of all elements
sumList :: [Int] -> Int
sumList = sum

mainSumList :: IO ()
mainSumList = do
    putStrLn "Enter a list of integers to find their sum (e.g., [1,2,3]):"
    xs <- readLn
    putStrLn $ "Sum of List: " ++ show (sumList xs)

main :: IO ()
main = mainlist
