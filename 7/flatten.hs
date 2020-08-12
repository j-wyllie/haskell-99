data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List [xs]) = flatten xs
flatten (List [Elem x, List xs]) = [x, flatten xs]
flatten (List [List xs, Elem x]) = [flatten xs, x] 
