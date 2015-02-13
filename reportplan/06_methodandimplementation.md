##Method and implementation

###In general

The group will implement an iterative development process. The product, being the combination of the language specification, the typechecker and the compiler, will be designed, implemented, tested and analyzed. The analysis of the test results will then be used for improving the design in the next iteration. This process will be used throughout the project. If the product is considered to be (or be close to) non improvable during the analysis step, additional features will be considered in the design step in the next iteration. The test results and decisions made will also serve as the main source of data for the final report.

###Design

There will be three main parts of this project that require designs: the language specification, the typechecker and the compiler. The language specification, the typechecker and high level compiler organization will be designed by close collaboration between all group members, while the concrete components of the compiler will be distributed amongst the members. A member will be responsible of leading the design of its component with help from other group members. The work will be distributed in such a way so that each member has worked with every component of the language specification and the compiler on some level. Quality criteria will be developed for the language specification and the compiler components during the design step. Quality criteria regarding the compiler components will address how well the compiler parses and translates the specified language. The criteria regarding the language specification will address how well the produced code runs on the Erlang VM, and how well it interoperates with Erlang libraries.

###Implementation
The typechecker and the compiler will be implemented by the design developed in the design step. The members responsible for the design of a component will also be responsible for its implementation. As in the design step, members will help the responsibles with the implementations and the work will be distributed in such a way so that each member has worked with every component of the product on some level. The language specification does not require this step; it will be developed in the design step.

###Testing
Automated and/or manual tests will be designed and implemented following the quality criterias produced in the design step. The concrete components of the compiler will be tested using black box testing, using mock objects if integration testing within the compiler should be needed. Mock objects will be implemented on demand. The group will produce a collection of Haskerl example code used when testing. All members will participate in deciding quality criterias and designing as well as developing the test suites. Tests used in passed iteration that are related to any developed or revised software should be invoked during this step.

###Analysis
Analysis of the test results will form the main decision basis. The conclusions from this step will be used for determine the quality of the product. The data gathered from this step is closely related to the quality criterias that the group defines in the design step. The analysis will investigate how well the language specification and the compiler fulfill these requirements. Depending on what the analysis result in will then influence the next iteration, being that the language specification and/or the compiler will be improved, revised or changed on a larger scale.
