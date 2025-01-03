multiplyElements :: Num a => [a] -> a -> [a]
multiplyElements lst n = [x * n | x <- lst]

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (e.g., [1, 2, 3]):"
    lst <- readLn
    putStrLn "Enter a multiplier:"
    n <- readLn
    print $ multiplyElements lst n

