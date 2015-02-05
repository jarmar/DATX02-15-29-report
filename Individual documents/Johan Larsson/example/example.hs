

-- generic algebraic data type
data Tree a = Empty | Node a (Tree a) (Tree a)


-- pattern matching
size :: Tree a -> Int
size Empty               = 0
size (Node _ left right) = 1 + size left + size right


-- case expression
sumT :: Tree Int -> Int
sumT tree = case tree of
    Empty               -> 0
    (Node n left right) -> n + sumT left + sumT right              


-- lambda expressions
fun_id :: a -> a
fun_id = \x -> x


-- partial application
double :: Int -> Int
double = mul 2

-- could use (*2) but wanted to expose type declaration
mul :: Int -> Int -> Int
mul a b = a*b








