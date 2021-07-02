//
// Created by Adam Cook on 7/1/21.
//

#ifndef PROJECT_1_UNDEFINEDSTRING_H
#define PROJECT_1_UNDEFINEDSTRING_H
#include "Automaton.h"

class UndefinedString : public Automaton
{
private:
    void S1(const std::string& input);
    void S2(const std::string& input);

public:
    UndefinedString() : Automaton(TokenType::UNDEFINED) {}  // Call the base constructor

    void S0(const std::string& input);
};


#endif //PROJECT_1_UNDEFINEDSTRING_H
