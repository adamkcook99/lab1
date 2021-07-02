//
// Created by Adam Cook on 6/30/21.
//

#include "MatcherAutomaton.h"
#include <string>

MatcherAutomaton::MatcherAutomaton(std::string toMatch, TokenType tokenType){
    this->toMatch = toMatch;
    this->type = tokenType;
}

int MatcherAutomaton::Start(const std::string& input) {
    bool isMatch = true;
    inputRead = 0; // member variable inherited from Automaton class
    for (int i = 0; i < (int)toMatch.size() && isMatch; i++) {
        if (input[i] != toMatch[i]) {
            isMatch = false;
        }
    }
    if (isMatch) {
        inputRead = toMatch.size();
    }
    return inputRead;
}


void MatcherAutomaton::S0(const std::string& input){
    //nothing
}

