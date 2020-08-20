data ListItem a = Single a | Multiple Int a
    deriving (Show)

pack :: Eq a => [a] -> [[a]]
pack (x:xs) = let (first,rest) = span (==x) xs
              in (x:first) : pack rest
pack [] = []

encode :: Eq a => [a] -> [(Int, [a])]
encode list = zip (map length groups) groups 
              where groups = pack list

encodeModified :: Eq a => [a] -> [ListItem [a]]
encodeModified = map (\(n,x) -> if (n == 1) then Single x else Multiple n x) . encode 
