
#Group log DATX02-15-29
#A Haskell-like language on the Erlang VM

- - -

##2015-01-25. LP3, läsvecka 1.
Protkollförare: Johan Larsson.  
Första veckan skrivs på svenska då vi inte valt språk än.  
Översättning görs eventuellt vid ett senare datum.


###Möten

Första veckan hade gruppen två möten. Första mötet hölls direkt efter den inledande föreläsningen 2015-01-20. Gruppmedlemmarna presenterade sig för varandra och pratade inledande om projektet.
2015-01-21 hölls det första inplanerade mötet och här närvarade även gruppens handledare Nick Smallbone. Onsdagar 15.15 kommer även i fortsättningen vara tiden för veckomöten.
På mötet behandlades gruppkontrakt och inledande rolltilldelning för administrativa uppgifter.
Gruppen diskuterade inriktning av arbetet med Nick som även gav tips på böcker vi kunde läsa.

*(Se mötesprotokoll för mer ingående information)*

###Roller

**Projektledare/Ordförande:** Björn  
Sammanställer dagordning senast dagen före veckomöte.
Alla medlemmar kan lämna förslag på punkter att ta upp.
Delegerar mindre administrativa uppgifter till medlemmar
i gruppen efter diskussion och överenskommelse.

**Protokollförare:** Johan L.  
För mötesprotokoll som ska finnas renskrivet och upplagt i
google-gruppen senast dagen efter mötet.
Ansvarar för gruppens veckodagbok/loggbok.
Får be om hjälp med veckodagboken vid behov.

**Plattformsansvarig:** David  
Google-grupp, google-kalender.

**Gitansvarig:** Johan W.  
Git kommer diskuteras vid ett senare möte.

Dessa roller är till en början satta fram tills inlämnandet av projektplanering. Rollernas ansvarsområden samt tilldelning diskuteras under veckomöten.

###Problem

Första tiden, med få gemensamma aktiviteter, har inte visat på några stora problem att lösa. Tekniska och administrativa uppgifter tilldelas gruppmedlemmar.

###Inläsning

Den första arbetsfasen fokuserar på planering och inläsning av ämnet. Varje gruppmedlem tar eget ansvar för att sätta sig in i kursens moment och att påbörja läsning av litteratur.
Det gemensamma arbetet sträcker sig i nuläget endast till möten och diskussioner i google-gruppen.

Exempel på inledande läsning:
- Erlang documentation.
- Implementing functional languages: a tutorial / The Implementation of Functional Programming Languages (Simon Peyton-Jones)
- Types and Programming Languages (Benjamin C. Pierce)


###Veckoplanering

Eget arbete fram tills nästa veckomöte 2015-01-28. 

- - -

##2015-02-01. LP3, week 2.
Notetaker: Johan Larsson.  

###Meetings

Week 2 had just the weekly meeting. The three big things discussed were:
- Reading done during the week that had passed.
- More detailed description of the "Haskerl" language.
- Dividing responsibilites and making plans for the writing of the project plan report.

*See meeting protocol for more details.*

###Work phase
The group is still in the "research and planning" phase of the project and most of the time towards the project is spent reading up on the subject and planning the upcoming steps. Some first tasks requiring cooperation between group members are happening (project plan report and agreeing on details for the problem description/project specifics).  
The writing of the planning report has been roughly divided between the group members as this:

- **Background and purpose:** David and Liam.
- **Problem/Task and Limitations:** Björn and Johan L.
- **Method:** Johan WS.
- **Time plan:** Jakob.

A first draft for each part should be done by next weekly meeting 2015-02-04 where the group will jointly evaluate the parts and give feedback.

###Problems (and solutions)

The only (and minor) problem that has occured is the group members not being sure exactly what kind of documents we needed to produce and where they needed to be made available (group log, individual log, project plan report, individual time log, meeting protocols etc.).  
The group will push all group activities/documents to the specified git repository and individual time logs etc. will be uploaded to PingPong.
We will make sure Nick get's access to the all documents and have links from PingPong to git repos so that Arne can also find all the information.

###Weekly planning

No group activities until next meeting.  
Individual tasks be done before next meeting:

- Upload own time logs to PingPong.
- Write a first draft for your assigned section of the planning report.
- Write some pieces of code highlighting functionality you'd like to have in "Haskerl".

- - -

##2015-02-08. LP3, week 3.
Notetaker: Johan Larsson.  

###Meetings

Week 3 had the weekly meeting and a workshop friday february 6th where we discussed and agreed on a small subset of our language to start working with.

Some points from the meetings:

- Chose Haskell as our language for implementing compiler (with help from BNFC initially).
- We will try booking a time for Fackspråk meeting soon after Planning report deadline.
- Drafts for Planning report will be updated sunday 2015-02-08 latest for assembling and proof reading by Johan WS (with help from Johan L).
- Group agreed on small program written in our language:

//

module Name ( expr ) where


expr :: String  
expr = "hello world"


f :: Int -> Int -> Int  
f = \a b -> a+b

g :: Int  
g = f 1 2

-- comment  
{- comment -}

//


For more details see meeting/workshop protocols.


###Work phase

Still mainly individual work although besides reading/planning we have also been writing drafts for parts of the planning report. Friday had the workshop which also started the actual work of writing code and trying to compile programs written in our language.


###Problems

The finished drafts for the planning report will be assembled and proof read by Johan WS.
Git flow guide is added to the project repository by Johan WS to streamline VCS usage by the group. (Found on https://github.com/DavidLindbom/DATX02-15-29)


###Weekly Planning

- Update planning report draft according to comments on Git commits.
- Next weekly meeting is 2015-02-11.

- - -

