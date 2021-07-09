//
// Created by Adam Cook on 7/7/21.
//

#ifndef PROJECT_1_RULE_H
#define PROJECT_1_RULE_H
#include "Predicate.h"
#include <vector>
using namespace std;

class Rule { // head predicate :- predicate
private:
    Predicate headPredicate;
    vector<Predicate> vectorRules;
public:
    Rule(){

    }

    void setHead(Predicate predicate){
        headPredicate = predicate;
    }
    void addRule(Predicate predicate){
        vectorRules.push_back(predicate);
    }

    void clearRules(){
        headPredicate.clear();
        vectorRules.clear();
    }


    string toString(){
        ostringstream output;

        output << headPredicate.toString();
        output << " :- ";
        for (int i = 0; i < vectorRules.size(); i++) {
            if (i == (vectorRules.size()-1)){
                output  << vectorRules[i].toString();
                break;
            } else {
                output << vectorRules[i].toString() << ",";
            }
        }

        return output.str();
    }
};


#endif //PROJECT_1_RULE_H
