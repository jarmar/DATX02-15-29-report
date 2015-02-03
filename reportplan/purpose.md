## Purpose

The overarching idea with the project is to design and implement an alternative language to the Erlang language on top of the Erlang Virtual Machine. The language will feature a Haskell-like syntax, offer a typesystem similar to Haskell(‘s?) and expose, in a safe way, the powerful features of the Virtual Machine. To utilize the big Erlang ecosystem it will also integrate with current OTP and Erlang libraries. 

The purpose of this bachelor project is for us to learn about functional programming, compilers and how a typesystem works and is constructed. 

The project will mainly depend on three parts, a parser, a typechecker and a compiler. Each one of these is significant and has their own role and purpose.

### Parser

The purpose of the parser is to read a text file of code and convert it to syntax tree. This will stop the visually incorrect code or convert it to a more usable representation to work with.

### Typechecker

The job of the typechecker is to determine if the code is correctly typed. With this, helpful error messages can be given that would otherwise lead to hard to find bugs. 

### Compiler (/Backend/Code generator?)

The purpose of the compiler is to generate the code for the Virtual Machine from the syntax tree. 

