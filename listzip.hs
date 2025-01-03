
listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith f xs ys = [f x y | (x, y) <- zip xs ys]

main :: IO ()
main = do
    let f = (+) -- You can replace this with any function like (*), (-), etc.
    putStrLn "Enter the first list:"
    xs <- readLn
    putStrLn "Enter the second list:"
    ys <- readLn
    print $ listZipWith f xs ys

