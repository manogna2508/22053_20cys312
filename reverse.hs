-- c. Reverse a list
reverseList :: [a] -> [a]
reverseList = reverse

mainReverseList :: IO ()
mainReverseList = do
    putStrLn "Enter a list to reverse it (e.g., [1,2,3]):"
    xs <- readLn :: IO [Int]  -- specify the type as a list of Ints
    putStrLn $ "Reversed List: " ++ show (reverseList xs)

main :: IO ()
main = mainReverseList

