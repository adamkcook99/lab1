//
// Created by Adam Cook on 7/1/21.
//

#include "UndefinedString.h"

void UndefinedString::S0(const std::string& input) {
    if (input[index] == '\'') {
        inputRead++;
        index++;
        S1(input);
    }
    else {
        Serr();
    }
}

void UndefinedString::S1(const std::string& input) {
    if (index >= input.size()) {//strings can have new lines
        return;

    } else if (input[index] == '\'') {
        inputRead++;
        index++;
        S2(input);

    } else {
        if (input[index] == '\n'){
            newLines++;
        }
        inputRead++;
        index++;
        S1(input);
    }
}

void UndefinedString::S2(const std::string& input) {
    if (input[index] == '\'') {
        inputRead++;
        index++;
        S1(input);

    } else {
        Serr();
    }
}