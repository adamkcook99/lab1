#include "Lexer.h"
#include "ColonAutomaton.h"
#include "ColonDashAutomaton.h"
#include "MatcherAutomaton.h"
#include "StringAutomaton.h"
#include "IDAutomaton.h"
#include "UndefinedString.h"
#include "CommentAutomata.h"
#include <iostream>
#include <vector>
#include <string>
#include <cctype>
using namespace std;

Lexer::Lexer(string& input) {
    //cout <<  "in lexer constructor, input  =  " <<  input << " \n";
    inputString = input;
    //cout << "input string = " << inputString << "\n";


    CreateAutomata();
    Run(inputString);
    //print();

}

Lexer::~Lexer() {
    // TODO: need to clean up the memory in `automata` and `tokens`
}

void Lexer::CreateAutomata() {

    //cout << "In create automata" << "\n";

    automata.push_back(new MatcherAutomaton(":-", TokenType::COLON_DASH));
    automata.push_back(new MatcherAutomaton(":", TokenType::COLON));
    //automata.push_back(new ColonAutomaton());
    // automata.push_back(new ColonDashAutomaton());
    automata.push_back(new StringAutomaton());
    automata.push_back(new MatcherAutomaton(",", TokenType::COMMA));
    automata.push_back(new MatcherAutomaton("Schemes", TokenType::SCHEMES));

    automata.push_back(new MatcherAutomaton(".", TokenType::PERIOD));
    automata.push_back(new MatcherAutomaton("?", TokenType::Q_MARK));
    automata.push_back(new MatcherAutomaton("(", TokenType::LEFT_PAREN));
    automata.push_back(new MatcherAutomaton(")", TokenType::RIGHT_PAREN));
    automata.push_back(new MatcherAutomaton("*", TokenType::MULTIPLY));
    automata.push_back(new MatcherAutomaton("+", TokenType::ADD));
    automata.push_back(new MatcherAutomaton("Facts", TokenType::FACTS));
    automata.push_back(new MatcherAutomaton("Rules", TokenType::RULES));
    automata.push_back(new MatcherAutomaton("Queries", TokenType::QUERIES));

    automata.push_back(new IDAutomaton());
    automata.push_back(new CommentAutomata());

    automata.push_back(new UndefinedString());

    //automata.push_back(new MatcherAutomaton(EOF, TokenType::EOF_TYPE));

    // TODO: Add the other needed automata here
}

void Lexer::Run(string& input) {

    //cout << "In Run in lexer, input = " << input << "\n";

    unsigned int lineNumber = 1;
    int inputRead = 0;

    //cout << "before!" << "\n";

    while (input.size() > 0) {
        unsigned int maxRead = 0;
        Automaton *maxAutomaton = automata[0];

        //to get rid of whitespace
        char nextChar = input[0];
        if (isspace(nextChar)) {
            if (nextChar == '\n'){
                lineNumber++;
            }
            input.erase(0, 1);
        } else {

            // Here is the "Parallel" part of the algorithm
            for (int j = 0; j < automata.size(); j++) {

                inputRead = automata[j]->Start(input);
                //cout << inputRead << "\n";

                if (inputRead > maxRead) {
                    maxRead = inputRead;
                    maxAutomaton = automata[j];
                }
            }

            //cout << "section done!" << "\n";

            // Here is the "Max" part of the algorithm
            if (maxRead > 0) {
                Token *newToken = maxAutomaton->CreateToken(input.substr(0, maxRead), lineNumber);
                lineNumber = lineNumber + maxAutomaton->NewLinesRead();
                tokens.push_back(newToken);
            }

                // No automaton accepted input; create invalid token
            else {
                maxRead = 1;
                Token* newToken = new Token(TokenType::UNDEFINED, input.substr(0,1), lineNumber);
               // Token *newToken = maxAutomaton->CreateToken(input.substr(0, 1), lineNumber);
                tokens.push_back(newToken);
            }

            // Update ‘input‘ by removing characters read to create Token
            input.erase(0, maxRead);
            //cout << input << "\n";



        }
    }

    Token* EOFToken = new Token(TokenType::EOF_TYPE, "", lineNumber);
    tokens.push_back(EOFToken);

}

void Lexer::print(){

    for (int j = 0; j < tokens.size(); j++) {
        string out = tokens[j]->printToken();
        if (!(j == (tokens.size()))) {
            cout << out << '\n';
        } else {
            cout << out;
        }
    }


    cout << "Total Tokens = " << tokens.size();
}




