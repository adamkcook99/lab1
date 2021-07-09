//
// Created by Adam Cook on 7/7/21.
//

#ifndef PROJECT_1_PREDICATE_H
#define PROJECT_1_PREDICATE_H
#include <vector>
#include <sstream>
#include "Parameter.h"
#include "Token.h"
using namespace std;

class Predicate { // snap(S,N,A,P)
private:
    string stringName;
    vector<Parameter> vectorParameter;
public:
    Predicate()= default;

    void setName(string name){
        stringName = name;
    }

    void addParameter(Parameter parameter) {
            vectorParameter.push_back(parameter);
    }

    vector<Parameter> getVector(){
        return vectorParameter;
    }

    void clear(){
        vectorParameter.clear();
        stringName.clear();
    }

    string toString() {
        ostringstream output;
        output << stringName;
        output << "(";
        for (int i = 0; i < vectorParameter.size(); i++) {
            if (i == (vectorParameter.size()-1)){
                output  << vectorParameter[i].toString();
                break;
            } else {
                output << vectorParameter[i].toString() << ",";
            }
        }

        output << ")";

        return output.str();
    }



};


#endif //PROJECT_1_PREDICATE_H
