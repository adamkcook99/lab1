//
// Created by Adam Cook on 7/7/21.
//

#ifndef PROJECT_1_DATALOGPROGRAM_H
#define PROJECT_1_DATALOGPROGRAM_H
#include "Predicate.h"
#include "Rule.h"
#include <vector>
#include <iostream>
#include <set>
#include <sstream>

using namespace std;

class DatalogProgram {
private:
    vector<Predicate> vectorSchemes;
    vector<Predicate> vectorFacts;
    vector<Predicate> vectorQueries;
    vector<Rule> vectorRule;
    set<string> domain;
    string output;

public:
    DatalogProgram(){

    }

    void pushbackScheme(Predicate input){
        vectorSchemes.push_back(input);
    }
    void pushbackFacts(Predicate input){
        vectorFacts.push_back(input);
    }
    void pushbackQueries(Predicate input){
        vectorQueries.push_back(input);
    }
    void pushbackRule(Rule input){
        vectorRule.push_back(input);
    }
    void pushbackdomain(string input){
        domain.insert(input);
    }

    /*
    string getDomainValue(int i){
        for (set<string>::iterator j = domain.begin(); j != domain.end(); j++) {
            string element = *j;
            return element;
        }
        return "getDomainValue didn't work";
    }
     */

   string toString(){
        //string output;
        ostringstream output;

       //print schemes
       output << "Schemes(" << vectorSchemes.size() << "): " << endl;
       for (int i = 0; i < vectorSchemes.size(); i++ ){
           output << "  " << vectorSchemes[i].toString() << endl;
       }


       //print facts
      output << "Facts(" << vectorFacts.size() << "):" << endl;
       for (int i = 0; i < vectorFacts.size(); i++ ){
           output << "  " << vectorFacts[i].toString() << "." << endl;
       }



       //print rules
       output << "Rules(" << vectorRule.size() << "):" << endl;
       for (int i = 0; i < vectorRule.size(); i++ ){
           output << "  " << vectorRule[i].toString() << "." << endl;
       }


       //print Queries
      output << "Queries(" << vectorQueries.size() << "):" << endl;
       for (int i = 0; i < vectorQueries.size(); i++ ){
           output << "  " << vectorQueries[i].toString() << "?" << endl;
       }



       //print domain
      output <<  "Domain(" << domain.size() << "):" << endl;
       for (string it : domain){
           output << "  " <<  it << endl;
       }


       return output.str();

   }







};


#endif //PROJECT_1_DATALOGPROGRAM_H
