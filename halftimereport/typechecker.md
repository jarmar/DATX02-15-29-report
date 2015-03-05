# Type checker results and problems

## Type checking
What is it? A semantic analysis where certain tractable properties of the code are verified. For example that addition only is applied to numeric values or that indexing is within bounds. Some properties, like termination, are excluded from type checking because of their intractable nature (the halting problem is undecidable).

## Type system
What is it? A formal proof system which allow us to prove certain properties for our code. Different type systems try to capture different properties to verify.
Hopper currently uses the Hindley-Milner type system for lambda calculus. It allows for parametric polymorphism. This means, in simple terms, that we can have 

## Gathering material
Type theory is a broad field with a plethora of different type systems, of which the description often is very theoretical and carry many subtle points. Sifting through this material has therefore taken a lot of time and has at times been quite overwhelming.
Once we had a grasp on what type system to use we ran in to another problem with the litterature we were studying; lack of concrete implementation details. Type systems are given as inference rules over abstract grammars and the translation from theory to code is not treated in any depth in our sources.

## Going with algorithm W
###Algorithm W (Damas Hindley Milner).
The Damas Hindley Milner type system is expressive enough to type check the basic rules of our grammar.
Algorithm W infers the most general type for expressions. Existing soundness and completeness proofs for algorithm W means that for our well formed expressions we will always find a type and that it will be the correct type.
The algorithm is linear on most inputs.

###Inference rules
Given the types of any subexpressions, and a context, as premises we can make conclusions about the types of our (well formed) expressions by a collection of rules.

###Specialization relation
A relation between types stating that one is more general than the other, and the other is more special.
Ex. forall a . a -> a is more general than Int -> Int

(example: identity function can be applied to an expression of type Int and is then a well typed expression).

Example:
id : forall a . a -> a, given in context
id : int -> int, since forall a. a -> a is more general than int -> int
n : int, given in context
id n : int


## Enter the AST
Efforts made to simplify type checking.
As progress on the type checker moves along the AST representation will possibly be remodeled to fit our needs.


## Starting to implement
Problems adapting to module level.

## In conclusion
Ramping up the type checker has been slow, but we are at last approaching a point where we can type check simple expressions. The next big hurdle is solving module and cross module type checking.

