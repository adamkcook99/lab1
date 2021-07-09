//
// Created by Adam Cook on 7/7/21.
//

#ifndef PROJECT_1_PARAMETER_H
#define PROJECT_1_PARAMETER_H
#include <vector>
#include "Token.h"

class Parameter { //can be STRING's or ID's, the inside of commas
private:
    string value;
    TokenType type; //stores ID or String
public:
    Parameter(){
        value = "no value";
    }

    void setValues(Token* token){
       type = token->getToken();
       value = token->getRawValue();
    }


    string toString(){
        return value;
    }

};


#endif //PROJECT_1_PARAMETER_H
