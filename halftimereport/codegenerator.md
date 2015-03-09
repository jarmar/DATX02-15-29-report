# Code generator results and problems

## Code generation
This is the last step of the compiler. Its functionality is to take the last variant of the AST and translate it into the target language. The chosen target language is core erlang, and it was chosen for various reasons, some of the more relevant being that it is not too different from Hoppers internal abstract syntax and different enough from Erlangs specification, enabling us to add different features to our language.

## Implementation
This project makes use of a haskell package that can parse, construct and print core erlang code. The biggest advantage with using such a package is that the translation is only to be done from our internal AST data structure to the defined data structure in the core erlang package.

## Difficulties and unforseen problems
Some excpected problems we have encountered are how to deal with arities of functions, binding variables in lambdas, translating multidefined functions. These have been proven tedious, but not unsolveable. So far the problems have been what design choses to make when the translation is not obvious.

While working with the core erlang compiler that comes with the erlang platform we have encountered some unforseen problems. In the erlang compiler, automatic additions to the code are done when compiling erlang code to core erlang code. This means that our code generator needs to emulate this behaviour and create identical or similar core erlang files, so to not miss out on valuable erlang behaviour that is not provided by the core erlang to beam compiler.

## Testing
It has, as expected, been hard to test the code generator in a complete and concise way. So far we have worked with hopper source code with different levels of functionality. We have written code that the compiler should have no trouble with, code that we think the compiler might have problem with, and code that the compiler definitely will have trouble with. When doing this we have spotted some special cases that we did not think of in the design step, which has helped us improve the implementation, but this kind of testing procedure does not guarantee a correctly behaving code generator. We will work with improving it.

## Current status
As of now, the code generator is not far behind the current state of the AST. Features that can be parsed but not compiled boils down to multidefined functions and lambdas that bind tuples.
