isPositive :: Int -> String
isPositive 0 = "Zero"
isPositive x | x > 0     = "Positive"
             | otherwise = "Negative"

