#ifndef TOKEN_H
#define TOKEN_H
#include <string>
using namespace std;

enum class TokenType {
    COLON,
    COLON_DASH,
    MULTIPLY,
    ADD,
    SCHEMES,
    FACTS,
    RULES,
    QUERIES,
    ID,
    STRING,
    COMMENT,
    UNDEFINED,
    EOF_TYPE,
    COMMA,
    PERIOD,
    Q_MARK,
    LEFT_PAREN,
    RIGHT_PAREN,
};

class Token
{
private:
    // TODO: add member variables for information needed by Token
    string rawValue;
    int lineNumber;
    TokenType tokenType;
    string printableToken;


public:
    Token(TokenType type, std::string description, int line);

    string typeToString(TokenType type);
    string printToken();

    // TODO: add other needed methods
};

#endif // TOKEN_H

//#include <cctype>
//isspace(  );


//isalpha() is letter?
//isalnum() is number?

/*
 * line comments = #
 * block comments = |#   #|
 *
 *
 */