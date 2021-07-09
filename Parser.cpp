//
// Created by Adam Cook on 7/5/21.
//

#include "Parser.h"
#include <iostream>
#include "Token.h"
#include "DatalogProgram.h"
#include "Predicate.h"


Parser::Parser(vector<Token*> tokens){

    this->tokens = tokens;


    myDatalogProgram = new DatalogProgram();

    //call for recursion
    datalogProgram();

}

/*
void Parser::print() {

    for (unsigned int j = 0; j < tokens.size(); j++) {
        string out = tokens[j]->printToken();
        cout << out << '\n';
    }
    cout << "Total Tokens = " << tokens.size();
}
 */

void Parser::matcher(TokenType type){

        if (tokens[i]->getToken() ==  type) {
            //cout <<  i + 1 << " has type " << tokens[i]->typeToString(type) << endl;
            i++;
            return;

        } else {

            //i++;
            throw tokens[i];
            //return false;
        }

}

void Parser::datalogProgram() {
    try {
        matcher(TokenType::SCHEMES);
        matcher(TokenType::COLON);
        scheme();
        schemeList();
        matcher(TokenType::FACTS);
        matcher(TokenType::COLON);
        factList();
        matcher(TokenType::RULES);
        matcher(TokenType::COLON);
        ruleList();
        matcher(TokenType::QUERIES);
        matcher(TokenType::COLON);
        query();
        queryList();
        matcher(TokenType::EOF_TYPE);
        cout << "Success!" << endl;

    } catch (Token* token){
        cout << "Failure!" << endl;
        cout << "  " << token->printToken() << endl;
        throw 0;
    }

}

void Parser::schemeList() {
    if (tokens[i]->getToken() == TokenType:: FACTS){
        return;
    } else {
        scheme();
        //myPredicate.clear();
        schemeList();
    }
}

void Parser::factList() {
    if (tokens[i]->getToken() == TokenType::RULES) {
        return;
    } else {
        fact();
        factList();
    }
}

void Parser::ruleList(){
    if (tokens[i]->getToken() == TokenType:: QUERIES) {
        return;
    } else {
        rule();
        ruleList();
    }
}

void Parser::queryList() {
    if (tokens[i]->getToken() == TokenType::EOF_TYPE) {
        return;
    } else {
        query();
        queryList();
    }
}

void Parser::scheme() {
    //Predicate myPredicate;
    myPredicate.setName(tokens[i]->getRawValue());

    matcher(TokenType::ID);
    matcher(TokenType::LEFT_PAREN);

    Parameter myParameter;
    myParameter.setValues(tokens[i]);
    myPredicate.addParameter(myParameter);

    matcher(TokenType::ID);

    idList();
    matcher(TokenType::RIGHT_PAREN);

    myDatalogProgram->pushbackScheme(myPredicate);
    myPredicate.clear();

    return;

}


void Parser::fact() {

    myPredicate.setName(tokens[i]->getRawValue());

    matcher(TokenType::ID);
    matcher(TokenType::LEFT_PAREN);

    Parameter myParameter;
    myParameter.setValues(tokens[i]);
    myPredicate.addParameter(myParameter);
    myDatalogProgram->pushbackdomain(myParameter.toString());

    matcher(TokenType::STRING);
    stringList();
    matcher(TokenType::RIGHT_PAREN);
    matcher(TokenType::PERIOD);

    myDatalogProgram->pushbackFacts(myPredicate);
    //myDatalogProgram->pushbackdomain(myPredicate.toString());
    myPredicate.clear();

    return;

}

void Parser::rule() {

    headPredicate();
    //myRule.setHead(myPredicate);

    matcher(TokenType::COLON_DASH);
    predicate();
    myPredicate.clear();
   // myRule.clearRules();
    predicateList();
    matcher(TokenType::PERIOD);

    myDatalogProgram->pushbackRule(myRule);
    myRule.clearRules();
    myPredicate.clear();
    return;
}


void Parser::query(){

    //myPredicate.setName(tokens[i]->getRawValue());
    predicate();
    matcher(TokenType::Q_MARK);

    myDatalogProgram->pushbackQueries(myPredicate);
    myPredicate.clear();
    return;

}

void Parser::headPredicate(){

    myPredicate.setName(tokens[i]->getRawValue());


   matcher(TokenType::ID);
   matcher(TokenType::LEFT_PAREN);

    Parameter myParameter;
   myParameter.setValues(tokens[i]);
    myPredicate.addParameter(myParameter);

   matcher(TokenType::ID);
   idList();
   matcher(TokenType::RIGHT_PAREN);

    myRule.setHead(myPredicate);
    //myRule.clearRules();
    myPredicate.clear();

   return;
}



void Parser::predicate() {
    myPredicate.setName(tokens[i]->getRawValue());

    matcher(TokenType::ID);
    matcher(TokenType::LEFT_PAREN);
    parameter();
    parameterList();
    matcher(TokenType::RIGHT_PAREN);

    myRule.addRule(myPredicate);

    //myPredicate.clear();


    return;
}

void Parser::predicateList(){
    if (tokens[i]->getToken() == TokenType:: PERIOD) {
        //myPredicate.clear();
        return;
    } else {
        matcher(TokenType::COMMA);
        predicate();
        myPredicate.clear();
        predicateList();
    }
}

void Parser::parameterList() {
    if (tokens[i]->getToken() == TokenType::RIGHT_PAREN) {
        return;
    } else {
        matcher(TokenType::COMMA);
        parameter();
        parameterList();
    }
}

void Parser::stringList() {
    if (tokens[i]->getToken() == TokenType::RIGHT_PAREN) {
        return;
    } else {
        matcher(TokenType::COMMA);

        Parameter myParameter;
        myParameter.setValues(tokens[i]);
        myPredicate.addParameter(myParameter);
        myDatalogProgram->pushbackdomain(myParameter.toString());

        matcher(TokenType::STRING);
        stringList();
    }
}

void Parser::idList() {

    if (tokens[i]->getToken() == TokenType::RIGHT_PAREN) {
        return;
    } else {
        matcher(TokenType::COMMA);


        Parameter myParameter;
        myParameter.setValues(tokens[i]);
        myPredicate.addParameter(myParameter);

        matcher(TokenType::ID);
        idList();
    }
}

void Parser::parameter(){
    if ((tokens[i]->getToken() == TokenType::STRING)){
        Parameter myParameter;
        myParameter.setValues(tokens[i]);
        myPredicate.addParameter(myParameter);
        matcher(TokenType::STRING);
        return;
    } else {
        Parameter myParameter;
        myParameter.setValues(tokens[i]);
        myPredicate.addParameter(myParameter);
        matcher(TokenType::ID);
    }
}

void Parser::print(){

    cout << myDatalogProgram->toString();
}