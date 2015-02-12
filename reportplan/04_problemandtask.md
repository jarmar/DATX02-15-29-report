##Problem and Task

###In general

*keywords:* prototype, documentation, functional, useful

"The goal of this project is to design and develop a prototype compiler for this new language".

We want to design and implement a language that utilize the benefits of the Erlang VM and the OTP libraries combined with the clean syntax and static typing of Haskell.

Additional requirements we pose on our solution are:

- Practical usage
- Real benefits from the type system
- Well documented/specified

We are not aiming at a complete and polished product but rather a prototype or proof of concept.

###Design language

*keywords:* interaction with Erlang, grammar, bnf, specification

There are two sides of computer languages. Purely syntactic - the structure of the language, and semantic - the meaning of the language. The syntax will be given by a grammar and the semantics of our features will be defined in terms of Core Erlang. We will design and formalize the interaction between haskell code and native erlang code.

A list of design features desired in the language:

- Static typing
- Clean syntax
- Transparent access to Erlang BIFs
- Support for message passing
- Functional and pure
- Abstract Data Types

Possible later additions:

- Type classes

Some example code of what Hopper might look like:

    module Server where
    exported
        startServer :: IO ()
        serverAtom :: Atom

    newType State a = State a

    -- Create the initial server state
    initState :: State Int
    initState = State 0

    -- Modify server state
    inc :: State Int -> State Int
    inc (State n) = State (n+1)

    -- Get Int from state
    get :: State -> Int
    get (State n) = n

    serverAtom :: Atom
    serverAtom = stringToAtom "server"

    -- Start a new server process and register its pid with the "server" atom
    startServer :: IO ()
    startServer = do
        pid <- spawn (server initState)
        register serverAtom pid
        return ()

    -- Server process. Receives messages of the type (PID, String).
    -- If no new message in 1000ms, shut server down.
    server :: State Int -> IO ()
    server s = do
        receive :: (PID, String)
            (_, msg) -> putStrLn (show s ++ ": " ++ msg)
        after
            1000     -> do 
                unregister serverAtom
                return ()
        server (inc S) -- TCO!

###Design compiler

*keywords:* lexer, parser, type checking, Core Erlang, bnfc, manual

The compilation process goes through several stages: lexing/parsing, type checking and code generation. We will initially use the BNFC tool to specify our lexer and parser. Later we might implement our own lexer and parser. For the code generation we intend to use an intermediate language called Core Erlang to simplify the generation of BEAM code. We will put emphasis on ease of use by for example having readable error reports.

###Implement compiler

*keywords:* modular, documentation, testing, implementation language

The specifics of the implementation depends heavily on the results from the language and compiler design phases. Two important aspects during this phase will be documentation and quality assurance, mainly through testing. The compiler will be written in Haskell.

