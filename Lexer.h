#ifndef LEXER_H
#define LEXER_H
#include <vector>
#include "Automaton.h"
#include "Token.h"
using namespace std;

class Lexer
{
private:
    string inputString;
    vector<Automaton*> automata; //fill you vector with machines
    vector<Token*> tokens; //this what goes back to main
    void CreateAutomata();

    // TODO: add any other private methods here (if needed)

public:

    Lexer(string& input);
    ~Lexer();
    void print();
    void Run(string& input);
    
    // TODO: add other public methods here

};

#endif // LEXER_H

