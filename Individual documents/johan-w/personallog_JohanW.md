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

  * O: 1,5h group meeting. We started discussing language features, but did not conclude anything beyond the brainstorming that was done. We distrubuted
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
  * O: 2h Meeting and docs working
  * T: 1h Document feedback
  * F: 4.5h Language workshop, docs working, git flow guide. It was decided that we define a small portion of our language and write the compiler for it and
       test how well the created .beams work on the erlang VM. This is regarded as the first iteration, spanning 2 weeks.
  * S: 3h Recapping BNFC and grammar experimentation
  * S: 1h Writing for the planning report

* LV4: TBD
  * M: 1h Proofreading
    T: 3h Recapping BNFC and grammar experimentation
    O: 
    T: -
    F:
    S:
    S:
