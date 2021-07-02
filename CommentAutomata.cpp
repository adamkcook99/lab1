//
// Created by Adam Cook on 7/1/21.
//

#include "CommentAutomata.h"


void CommentAutomata::S0(const std::string& input) {
    if (input[index] == '#') {
        inputRead++;
        index++;
        S1(input);
    } else {
        Serr();
    }
}

void CommentAutomata::S1(const std::string& input) {
    if ((input[index] == '|')) {
        inputRead++;
        index++;
        S3(input);
    } else {
        //inputRead++;
        //index++;
        S2(input);
    }
}

void CommentAutomata::S2(const std::string& input) {
    if (index >= input.size() || input[index] == '\n') {
       // inputRead++;
       // index++;
        //S6(input);
        return;

    } else {
        inputRead++;
        index++;
        S2(input);

    }
}

void CommentAutomata::S3(const std::string& input) {
    if ((input[index] == '|')) {
        inputRead++;
        index++;
        S4(input);
    } else if (index >= input.size()) {
        type = TokenType::UNDEFINED;
        //Serr();
    } else {
        if (input[index] == '\n'){
            newLines++;
        }
        index++;
        inputRead++;
        S3(input);
    }
}


void CommentAutomata::S4(const std::string& input) {
    if (index >= input.size()) {
        type = TokenType::UNDEFINED;
        //Serr();
    } else if (input[index] == '#') {
        index++;
        inputRead++;
        return;
    } else if (input[index] == '|'){
        index++;
        inputRead++;
        S4(input);
    } else {
        if (input[index] == '\n'){
            newLines++;
        }
        index++;
        inputRead++;
        S3(input);
    }
}

void CommentAutomata::S5(const std::string& input) {
    inputRead++;
    return;
}

void CommentAutomata::S6(const std::string& input) {
    if (index >= input.size()  || input[index] == '\n') {
        inputRead++;
        index++;
        S4(input);
    }
}



