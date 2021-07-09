//
// Created by Adam Cook on 7/5/21.
//

#ifndef PROJECT_1_PARSER_H
#define PROJECT_1_PARSER_H

#include <vector>
#include "Token.h"
#include "DatalogProgram.h"

using namespace std;


class Parser {
private:
    //vector<Token *> tokens;
    DatalogProgram* myDatalogProgram;
    Predicate myPredicate;
    Rule myRule;


public:
    int i = 0;
    //Predicate* myPredicate;
    vector<Token *> tokens;


    Parser(vector<Token *> tokens);

    Parser();

    //void print();

    void matcher(TokenType type);


    void datalogProgram();

    void schemeList();

    void factList();

    void ruleList();

    void queryList();

    void scheme();

    void fact();

    void rule();

    void query();

    void headPredicate();

    void predicate();

    void predicateList();

    void parameterList();

    void stringList();

    void idList();

    void parameter();

    void print();
};

#endif //PROJECT_1_PARSER_H
