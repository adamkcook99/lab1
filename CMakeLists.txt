cmake_minimum_required(VERSION 3.15)
project(Project_1)

set(CMAKE_CXX_STANDARD 14)

include_directories(Project-1)

add_executable(Project_1
        Automaton.h
        ColonAutomaton.cpp
        ColonAutomaton.h
        ColonDashAutomaton.cpp
        ColonDashAutomaton.h
        Lexer.cpp
        Lexer.h
        Token.cpp
        Token.h
        MatcherAutomaton.cpp
        MatcherAutomaton.h
        StringAutomaton.cpp
        StringAutomaton.h
        IDAutomaton.cpp
        IDAutomaton.h
        UndefinedString.cpp
        UndefinedString.h
        CommentAutomata.cpp
        CommentAutomata.h
        Parser.cpp
        Parser.h
        DatalogProgram.cpp
        DatalogProgram.h
        Parameter.cpp
        Parameter.h
        Predicate.cpp
        Predicate.h
        Rule.cpp
        Rule.h
        main.cpp)
