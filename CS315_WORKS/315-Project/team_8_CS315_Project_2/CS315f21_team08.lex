%option yylineno
digit   [0-9]
boolean TRUE|FALSE
signs   [-+]

integer {signs}?{digit}+
float   {signs}?{digit}*(\.){digit}+

string  \"[^\"]*\"
character   {digit}|[A-Za-z]

commentBeginning COMMENT
commentEnding END_COMMENT

comment     {commentBeginning}(.)*{commentEnding}

integer_identifierEnding _I
integer_identifier [A-Za-z]{character}*{integer_identifierEnding}

float_identifierEnding _F
float_identifier [A-Za-z]{character}*{float_identifierEnding}

boolean_identifierEnding _B
boolean_identifier [A-Za-z]{character}*{boolean_identifierEnding}

string_identifierEnding _S
string_identifier [A-Za-z]{character}*{string_identifierEnding}

function_name [A-Za-z]{character}*

%%
ACTIVATE_DRONE                      return ACTIVATE_DRONE;
STOP_DRONE                          return STOP_DRONE;
{boolean}                           return BOOLEAN;
{integer}                           return INTEGER;
{float}                             return FLOAT;
{string}                            return STRING;
{comment}                           return COMMENT;
IF                                  return IF;
ELSE_IF                             return ELSE_IF;
ELSE                                return ELSE;
FOR                                 return FOR;
WHILE                               return WHILE;
RETURN                              return RETURN;
CONNECT_DRONE_TO_WIFI               return CONNECT_DRONE_TO_WIFI;
DISCONNECT_DRONE_FROM_WIFI          return DISCONNECT_DRONE_FROM_WIFI;
READ_HEADING                        return READ_HEADING;
READ_ALTITUDE                       return READ_ALTITUDE;
READ_SPRAY_STATUS                   return READ_SPRAY_STATUS;
READ_TEMPERATURE                    return READ_TEMPERATURE;
READ_WIFI_CONNECTION_STATUS         return READ_WIFI_CONNECTION_STATUS;
GET_WIFI_CONNECTION_STATUS          return GET_WIFI_CONNECTION_STATUS;
READ_WIFI_CONNECTION_INFORMATION    return READ_WIFI_CONNECTION_INFORMATION;
GET_ALTITUDE                        return GET_ALTITUDE;
GET_HEADING                         return GET_HEADING;
GET_SPRAY_STATUS                    return GET_SPRAY_STATUS;
GET_TEMPERATURE                     return GET_TEMPERATURE;
GET_HORIZONTAL_VELOCITY             return GET_HORIZONTAL_VELOCITY;
GET_VERTICAL_VELOCITY               return GET_VERTICAL_VELOCITY;
CLIMB_UP                            return CLIMB_UP;
DROP_DOWN                           return DROP_DOWN;
STOP_VERTICALLY                     return STOP_VERTICALLY;
MOVE_FORWARD                        return MOVE_FORWARD;
MOVE_BACKWARD                       return MOVE_BACKWARD;
STOP_HORIZONTALLY                   return STOP_HORIZONTALLY;
MOVE                                return MOVE;
TURN                                return TURN;
NORTH                               return NORTH;
EAST                                return EAST;
WEST                                return WEST;
SOUTH                               return SOUTH;
NORTH_EAST                          return NORTH_EAST;
NORTH_WEST                          return NORTH_WEST;
SOUTH_EAST                          return SOUTH_EAST;
SOUTH_WEST                          return SOUTH_WEST;
TURN_LEFT                           return TURN_LEFT;
TURN_RIGHT                          return TURN_RIGHT;
TURN_NORTH                          return TURN_NORTH;
TURN_EAST                           return TURN_EAST;
TURN_WEST                           return TURN_WEST;
TURN_SOUTH                          return TURN_SOUTH;
TURN_NORTH_EAST                     return TURN_NORTH_EAST;
TURN_NORTH_WEST                     return TURN_NORTH_WEST;
TURN_SOUTH_EAST                     return TURN_SOUTH_EAST;
TURN_SOUTH_WEST                     return TURN_SOUTH_WEST;
TURN_ON_SPRAY                       return TURN_ON_SPRAY;
TURN_OFF_SPRAY                      return TURN_OFF_SPRAY;
\+\+                                return INCREMENT_ONE;
\-\-                                return DECREMENT_ONE;
\+                                  return PLUS;
\-                                  return MINUS;
\*                                  return MULTIPLICATION;
\/                                  return DIVISION;
\,                                  return COMMA;
\(                                  return LP;
\)                                  return RP;
\{                                  return LCB;
\}                                  return RCB;
\[                                  return LSB;
\]                                  return RSB;
OR                                  return OR;
NOR                                 return NOR;
AND                                 return AND;
NAND                                return NAND;
XOR                                 return XOR;
NOT                                 return NOT;
\<                                  return LT;
\<\=                                return LTE;
\>                                  return GT;
\>\=                                return GTE;
\=\=                                return EQUAL_OP;
NOT\=                               return NOT_EQUAL_OP;
FUNCTION                            return FUNCTION;
PRINT                               return PRINT;
PRINTLINE                           return PRINTLINE;
INPUT                               return INPUT;
VOID                                return VOID;
BOOLEAN                             return BOOLEAN_TYPE;
INT                                 return INTEGER_TYPE;
CONSTANT_INT                        return CONSTANT_INTEGER_TYPE;
FLOAT                               return FLOAT_TYPE;
CONSTANT_FLOAT                      return CONSTANT_FLOAT_TYPE;
STRING                              return STRING_TYPE;
CONSTANT_STRING                     return CONSTANT_STRING_TYPE;
{integer_identifier}                return INTEGER_IDENTIFIER;
{float_identifier}                  return FLOAT_IDENTIFIER;
{string_identifier}                 return STRING_IDENTIFIER;
{boolean_identifier}                return BOOLEAN_IDENTIFIER;
{function_name}                     return FUNCTION_NAME;
\;                                  return SEMICOLON;
\<-                                 return ASSIGN;
[ \t\n]       ;
%%
int yywrap(void){ return 1;}