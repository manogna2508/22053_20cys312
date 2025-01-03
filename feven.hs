filterEven :: [Int] -> [Int]
filterEven lst = filter odd lst

main :: IO ()
main = do
    putStrLn "Enter a list of integers (e.g., [1, 2, 3, 4, 5]):"
    lst <- readLn
    print $ filterEven lst

