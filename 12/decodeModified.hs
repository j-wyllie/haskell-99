data ListItem a = Single a | Multiple Int a
    deriving (Show) 

--decodeModified :: (Eq a) => [a] -> [ListItem [a]]
decodeModified (x:xs) = map toListItem $ x : group xs
    where toListItem x = x 
          group = takeWhile (==x) 
