---
title: Compiler Design
subtitle: KTU S6 CSE CS304
---

# Introduction to Compilers and Lexical Analysis

## Introduction to Compilers
Programmers write in high level languages for convenience and increased productivity. But these high level languages cannot be directly executed by the computer. We use tools to convert these languages to low level ones.

### Interpreters
Interpreters take the source program and execute it then and there. There is no conversion to intermediate object code. Since it reads it line by line, it has better error reporting.

Since Interpreter has to do the work of reading, parsing and executing the program every time it's much slower than the Compiler.

### Compilers
Compilers are programs that take programs written in one language(preferrably high-level) and converts it into a low-level equivalent for execution.

Alongside conversion it also reports any errors that occur during the transalation process, after reading the whole program.

#### Difference between Compilers and Interpreters
| Compiler                                                 | Interpreter                                                          |
|----------------------------------------------------------|----------------------------------------------------------------------|
| Takes entire program as Input                            | Takes single instruction at a time                                   |
| Generates an intermediate object code                    | No intermediate object code is generated                             |
| Conditional control statements are executed faster       | Conditional control statements are executed faster                   |
| Memory requirement is higher as object code is generated | Memory requirement is less as no intermediate object code is present |
| Program needs to be compiled only once                   | Program is converted each and every time it's executed               |
| Errors are displayed after entire program is processed   | Errors are displayed after each instruction                          |
| eg: C, C++ are compiled languages                        | eg: Python, Ruby are interpreted languages                           |

## Phases of a Compiler
The compiler converts the program while going through different phases of transformations. See +@fig:compilerphases

![Phases of Compiler](CSE/S6/graphs/cs304_compilerphases.png){#fig:compilerphases}

## Lexical Analysis
### The role of Lexical Analyzer
### Input Buffering
### Specification of Tokens using Regular Expressions
### Review of Finite Automata
### Recognition of Tokens.

# Syntax Analysis And Top-Down Parsing
# Bottom Up Parsing
# Syntax Generated Transalation
# Environment and Intermediate Code Generation
# Code Optimization and Generation