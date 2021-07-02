#include "Lexer.h"
#include <string>
#include <iostream>
#include <string>
#include <vector>
#include <fstream>


using namespace std;

int main(int argc, char** argv) {
    // check command line arguments
    if (argc != 2) {
        cout << "usage: " << argv[0] << " input_file" << endl;
        return 1;
    }

    // open file
    string fileName = argv[1];
    ifstream input(fileName);
    if (!input.is_open()) {
        cout << "File " << fileName << " could not be found or opened." << endl;
        return 1;
    }

    string stringInput;
    string line;
    while (getline(input,line)) {
       stringInput = stringInput + line + '\n';
    }
    //stringInput.pop_back();



    // new lexer
    Lexer* lexer;
    lexer = new Lexer(stringInput);
    lexer->print();




   delete lexer;

    return 0;
}