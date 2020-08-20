pack (x:xs) = let (first,rest) = span (==x) xs
              in (x:first) : pack rest
pack [] = []

encode list = zip (map length groups)  groups 
              where groups = pack list
