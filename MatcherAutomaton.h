//
// Created by Adam Cook on 6/30/21.
//

#ifndef PROJECT_1_MATCHERAUTOMATON_H
#define PROJECT_1_MATCHERAUTOMATON_H
#include "Automaton.h"



class MatcherAutomaton : public Automaton
{
private:
    std::string toMatch;
public:


    MatcherAutomaton(std::string toMatch, TokenType tokenType);

    int Start(const std::string& input);

    void S0(const std::string& input);

};


#endif //PROJECT_1_MATCHERAUTOMATON_H
