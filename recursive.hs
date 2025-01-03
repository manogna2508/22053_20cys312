reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do
    putStrLn "Enter a list of elements (e.g., [1, 2, 3]):"
    lst <- readLn :: IO [Int] -- Specify the type as a list of integers
    print $ reverseList lst

