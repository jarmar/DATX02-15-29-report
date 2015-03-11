* LV1: 6h
  * M: -
  * T: 3h lectures and group meeting
  * W: 3h group meeting with supervisor. We put down some ground rules in our conctract and distributed some roles.
  * T: -
  * F: -
  * S: -
  * S:

* LV2: 16,5h
  * M: -
  * T: 10h reading. Covered the "An introduction to Core Erlang" and part of the first chapter in "Implementing functional languages: a tutorial".
     Core Erlang seems to be a good choice of target language. The "Implementing functional languages: a tutorial" seems to be worth some reading,
     it brings up how to handle algebraic datatypes in a core language (how to represent constructors) and lamba lifting, though I have not read
     this part closely. Will proceed reading the "Implementing functional languages: a tutorial" and will take on the actual Core Erlang paper.

  * W: 1,5h group meeting. We started discussing language features, but did not conclude anything beyond the brainstorming that was done. We distrubuted
     parts of the planning report members should start writing. A first draft of each part should be done before the next meeting, so the next meeting
     can be used for discussing the different drafts. We also decided that the language to be used in oficiall documents is english, so to make it
     accesible for a wider audience if the project becomes interesting enough.

  * T: 2h lecture. Some conclusions of the lecture (writing methodology) was: Implement iterative writing. Write idea, then a
     draft for the idea, then a processed text if the draft holds, from the point of view of content. If one wants feedback from a specific point of
     view, one should ask for general feedback first, then the speficik point of view (making the feedback process a 2 step phase). An idea is to
     write different parts of the documents in coded colors (green for ideas, blue for drafts, black for final). By doing this we can communicate what
     kind of feedback we expect and in which stage a certain piece of text is. We should regard the target audience when writing. Who will read, what
     does that reader want to learn from the text, what can we expect the reader to know beforehand, what does the read expect to read, etc. A good idea
     is to define our current knowledge base. When we write the report, we will then be able to look back at this knowledge base and use it as a profile
     for someone that did not work with the project.

     1h summerizing. Wrote this log, created the git repo for internal documents.

     2h reading. Started reading the "Core Erlang language specification" paper.
  * F: -
  * S: -
  * S: -

* LV3: 20h
  * M: 1.5h Summerizing

     2h Reading Core Erlang paper. Conclusions about this paper is that it will be useful when digging deeper into how to compile the defined haskell like syntax
     to Core Erlang. Some parts of the paper seems to be skipable, in particular the parts that discuss how to evaluate core erlang code. I think it will
     be good to use this paper as a reference when working with the compiler.

     1h Some .herl example coding. I use the following work flow: Write a haskell like module named *.herl, implement an equivalent erlang module and compile it
     to core with erlc +to_core {FILENAME} to get the desired .core file the .herl file should compile into.

     1h Reading about Yhc Erlang project. The Yhc core language, or the GHC core language, might be worth to look into.

  * T: 3h Writing for the planning report
  * W: 2h Meeting and docs working
  * T: 1h Document feedback
  * F: 4.5h Language workshop, docs working, git flow guide. It was decided that we define a small portion of our language and write the compiler for it and
       test how well the created .beams work on the erlang VM. This is regarded as the first iteration, spanning 2 weeks.
  * S: 3h Recapping BNFC and grammar experimentation
  * S: 1h Writing for the planning report

* LV4: 9.5h
  * M: 1h Proofreading
    T: 3h Recapping BNFC and grammar experimentation
    W: 2h Meeting, grammar experimentation, document formatting. During the meeting we devided the work of the first iteration. I will work with the code generation.
    T: 0.5h proofreading
    F: 3h Workshop and planning report finalizing. I started implementing the code generator. The basic idea is for it to use the internal syntax tree data structure
       as input and produce Core Erlang code as Strings.
    S: -
    S: -

* LV5: 22h
  * M: 3h Code generator implementation. Started to translate the solution to produce data types from the Language.CoreErlang.Syntax package instead of pure
       Core Erlang strings. Started translating some expressions. Some are straightforward, others (like lambda and app) are harder to get right since the
       grammar differences. I also have some difficulties understanding the annotated data types in the Language.CoreErlang.Syntax package, I need to dig
       deeper into this.
  * T: 6h Code generator implementation. Most of the first step of the Code generator seems to be working. It seems to generate the Language.CoreErlang.Syntax
       data structure fine, except for the unimplemented expressions lambda, infix and app (infix should be desugerized into an app earlier in the pipe line
       I think. I discovered that the code generator needs a second step, which is printing out the resulting to a tmp.core file which should then be used
       as input for erlc. erlc only works for files and not strings. The tmp.core file should also be removed after this, but I think this might an extra step
       in the pipeline. Following this I implemented a short module beamWriter which takes the result of the CodeGenerator.hs and compiles a .beam file using
       the erlc program.
  * W: 4h Group meeting and Code generator test implementation. Started to write a test suite for the code generator. I don't know how deep I should go with the
       black box testing, it feels kind of trivial. The real tests will check that the compilation down to .beam was successful and that the .beam code works
       as intended. During the meeting we planned iteration 2. I will continue with the code generator, finalizing it and translate it so it uses the desugarized AST.
  * T: 4h Code generator coding. Made my local buildchain work and added a test that compiles a prespecified module and makes sure it functions as intended.
  * F: -
  * S: 5h Code generator coding. Translated to the current AST data structure, but have not implemented App yet. Also translated the test suite in the same manner.
  * S: -

* LV6: 15h
  * M: 6h Code generator implementation. Worked with different ways of compiling the App expression, managed to finalize an aproach that unfolds a chain of Apps
       and compiles it down to CoreErlang apps. I realized that we need to think about how to deal with intermodule calls, and how to treat bifs. These two
       problems are closely related since calls to bifs are esentially intermodule calls using the 'erlang' module.
  * T: 4h Code generator implementation. Merged 2 feature branches so they can be merged with develop soon. Tried to verify the functionality of the code
       generator and spotted some bugs with lambdas and function applications. We need to think about how to deal with lambdas, since Erlang requires all
       higher order functions to be stored in a variable before invokation. Also, the grammar needs to be able to specify functions in the type signature.
  * W: 5h Code generator implementation and meeting. I worked on the lambdas and managed to make them better, and I did some cleanup. During the meeting we discussed
       iteration 3 and decided that some more features should be implemented. We will be adding intermodule calls, parameters to functions, case/if statements and
       more if there is time. We will also start writing on the report to make sure we have material to work with during the first fackspråk session, and we will
       prepare material for the half time presentation which David and Jakob will do.
  * T: -
  * F: -
  * S: -
  * S: -

* LV7: 28h
  * M: -
  * T: 8h Code generator translaton, experimentation and report reading. The code generator have been translated to the new AST. I have experimented a bit with
       core erlang and see how it handles multiparameter functions and multidefined functions. It seems to be straight forward, but nestled expressions might
       get tricky when it comes to keeping track of variable names. I have started reading example reports to get a basic understanding of what is expected
       in such a report and how it might be structured.
  * W: 5h Code generator implementation, group meeting. I have encountered a problem with lambdas, where our language support tuples in the pattern while core erlang
       only deal with a list of variables. If a tuple is specified, the generated core erang code should bound the tuple to one argument, and pattern match it in
       a case clause. In the meeting we discussed briefly how to fix this, we think that the renamer might need to translate lambdas so they only have variables.
  * T: 1h Writing material for the half time report.
  * F: 8h Code generator implementation. Nothing special to report, just fixes corrections and testing.
  * S: -
  * S: 6h Code generator implementation. Reworked the EApp and ECall implementations. Seems to compile nested function calls correctly now.

* LV8: TBD
  * M: 7h Code generator implementation. Added a renaming step just before code gen which reworks EApps and ECalls to a more "compileable" format for the codegen to use.
  * T: 2h Attending half time presentation, pre code gen renaming implementation
