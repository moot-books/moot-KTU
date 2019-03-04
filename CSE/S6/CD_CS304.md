---
title: Compiler Design
subtitle: KTU S6 CSE CS304
---

# Introduction to Compilers and Lexical Analysis

## Introduction to Compilers
Programmers write in high level languages for convenience and increased productivity. But these high level languages cannot be directly executed by the computer. We use tools to convert these languages to low level ones.

Compilers are programs that take programs written in one language(preferrably high-level) and converts it into a low-level equivalent for execution.

Alongside conversion it also reports any errors that occur during the transalation process, after reading the whole program.

### Interpreters
Interpreters take the source program and execute it then and there. There is no conversion to intermediate object code. Since it reads it line by line, it has better error reporting.

Since Interpreter has to do the work of reading, parsing and executing the program every time it's much slower than the Compiler.

### Difference between Compilers and Interpreters
| Compiler                                                 | Interpreter                                                          |
|----------------------------------------------------------|----------------------------------------------------------------------|
| Takes entire program as Input                            | Takes single instruction at a time                                   |
| Generates an intermediate object code                    | No intermediate object code is generated                             |
| Conditional control statements are executed faster       | Conditional control statements are executed faster                   |
| Memory requirement is higher as object code is generated | Memory requirement is less as no intermediate object code is present |
| Program needs to be compiled only once                   | Program is converted each and every time it's executed               |
| Errors are displayed after entire program is processed   | Errors are displayed after each instruction                          |
| eg: C, C++ are compiled languages                        | eg: Python, Ruby are interpreted languages                           |

The compiler converts the program while going through different phases of transformations. See +@fig:compilerphases

![Execution of Program](assets/cs304_executionsequence.png){#fig:compilerphases}


## Parts of Compilation
There are two phases of compilation. 

* Analysis : Breaks up the source program  into constituent pieces and creates an intermediate representation of source program. 

* Synthesis : Constructs desired target program from the intermediate representation.

### Analysis Phase
#### Lexical Analysis (Linear Analysis)
Lexical Analyser separates characters given in the source language into groups that logically belong together called tokens.

Tokens - Meaningful sequence of characters in source program. eg : keywords, literals, identifiers

* Identifies whether given string or word is accepted in the language.
* Uses regular expression to match words.
* The output of Lexical Analyser is a Stream of tokens which is passed on to th e next phase, the syntax analyser of parser.

#### Syntax Analysis (Heirachial Analysis)
Consumes the Stream of tokens passed by the Lexical Analyser and groups them into syntactic structures.

* Checks whether the statement is acceptable in that language.
* Make use of Context Free Grammer.
