swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

-- Main function for user interaction
main :: IO ()
main = do
    putStrLn "Enter a tuple (a, b) (e.g., (3, 7)):"
    input <- getLine
    let tuple = read input :: (Int, Int)
    print $ swapTuple tuple

