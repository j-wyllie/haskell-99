compress :: [a] -> [a]
compress = map head . group
