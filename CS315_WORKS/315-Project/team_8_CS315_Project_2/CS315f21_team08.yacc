/*hudson.y*/
%token ACTIVATE_DRONE STOP_DRONE BOOLEAN INTEGER FLOAT STRING COMMENT IF ELSE_IF ELSE FOR WHILE RETURN

%token CONNECT_DRONE_TO_WIFI DISCONNECT_DRONE_FROM_WIFI READ_HEADING READ_ALTITUDE READ_SPRAY_STATUS READ_TEMPERATURE READ_WIFI_CONNECTION_STATUS READ_WIFI_CONNECTION_INFORMATION GET_WIFI_CONNECTION_STATUS
%token GET_ALTITUDE GET_HEADING GET_SPRAY_STATUS GET_TEMPERATURE GET_HORIZONTAL_VELOCITY GET_VERTICAL_VELOCITY CLIMB_UP DROP_DOWN STOP_VERTICALLY MOVE_FORWARD MOVE_BACKWARD STOP_HORIZONTALLY
%token TURN_LEFT TURN_RIGHT TURN_NORTH TURN_EAST TURN_WEST TURN_WEST TURN_SOUTH TURN_NORTH_EAST TURN_NORTH_WEST TURN_SOUTH_EAST TURN_SOUTH_WEST TURN_ON_SPRAY TURN_OFF_SPRAY
%token MOVE TURN NORTH EAST WEST SOUTH NORTH_EAST NORTH_WEST SOUTH_EAST SOUTH_WEST
%token INCREMENT_ONE DECREMENT_ONE COMMA LCB RCB LSB RSB LT LTE GT GTE EQUAL_OP NOT_EQUAL_OP FUNCTION PRINT PRINTLINE INPUT VOID
%token BOOLEAN_TYPE INTEGER_TYPE CONSTANT_INTEGER_TYPE FLOAT_TYPE CONSTANT_FLOAT_TYPE STRING_TYPE CONSTANT_STRING_TYPE INTEGER_IDENTIFIER FLOAT_IDENTIFIER STRING_IDENTIFIER BOOLEAN_IDENTIFIER  FUNCTION_NAME SEMICOLON ASSIGN
%left OR NOR AND NAND XOR NOT
%left PLUS MINUS
%left MULTIPLICATION DIVISION
%left LP RP

%%
initialState: activate {printf("\rGiven source code is syntactically correct and valid.\n"); return 0;};
activate: ACTIVATE_DRONE statements STOP_DRONE;
statements: statement | statement statements;
statement: COMMENT | loops | if_else_statement | define_function
         | expression SEMICOLON;

expression: declarations | assignments | input | output
          | call_function | call_primitive_function;

loops: for_loop | while_loop;

declarations: declare_integer
            | declare_constant_integer
            | declare_float
            | declare_constant_float
            | declare_string
            | declare_constant_string
            | declare_boolean;

assignments: assign_integer
           | assign_float
           | assign_string
           | assign_boolean;

declare_integer: INTEGER_TYPE INTEGER_IDENTIFIER
               | INTEGER_TYPE assign_integer;

declare_constant_integer: CONSTANT_INTEGER_TYPE assign_constant_integer;

declare_float: FLOAT_TYPE FLOAT_IDENTIFIER
             | FLOAT_TYPE assign_float;

declare_constant_float: CONSTANT_FLOAT_TYPE assign_constant_float;

declare_string: STRING_TYPE STRING_IDENTIFIER
              | STRING_TYPE assign_string;

declare_constant_string: CONSTANT_STRING_TYPE assign_constant_string;

declare_boolean: BOOLEAN_TYPE BOOLEAN_IDENTIFIER
               | BOOLEAN_TYPE assign_boolean;

assign_integer: INTEGER_IDENTIFIER ASSIGN integer_operation
              | INTEGER_IDENTIFIER ASSIGN call_primitive_function_that_returns_integer
              | INTEGER_IDENTIFIER INCREMENT_ONE
              | INTEGER_IDENTIFIER DECREMENT_ONE
              | INTEGER_IDENTIFIER ASSIGN call_function;


assign_constant_integer: INTEGER_IDENTIFIER ASSIGN INTEGER;

assign_float: FLOAT_IDENTIFIER ASSIGN float_operation
            | FLOAT_IDENTIFIER ASSIGN call_primitive_function_that_returns_float;
            | FLOAT_IDENTIFIER INCREMENT_ONE
            | FLOAT_IDENTIFIER DECREMENT_ONE
            | FLOAT_IDENTIFIER ASSIGN call_function;

assign_constant_float: FLOAT_IDENTIFIER ASSIGN FLOAT;

assign_string: STRING_IDENTIFIER ASSIGN string_factor;

assign_constant_string: STRING_IDENTIFIER ASSIGN STRING;

assign_boolean: BOOLEAN_IDENTIFIER ASSIGN boolean_operation
              | BOOLEAN_IDENTIFIER ASSIGN call_primitive_function_that_returns_boolean;
              | BOOLEAN_IDENTIFIER ASSIGN call_function;

for_loop: FOR LP declarations SEMICOLON boolean_operation SEMICOLON assignments RP LCB statements RCB;

while_loop: WHILE LP boolean_operation RP LCB statements RCB;

if_else_statement: if_statement else_if_statements else_statement
                 | if_statement else_statement
                 | if_statement;

if_statement: IF LP boolean_operation RP LCB statements RCB;

else_if_statements: else_if_statement | else_if_statements else_if_statement;

else_if_statement: ELSE_IF LP boolean_operation RP LCB statements RCB;

else_statement: ELSE LCB statements RCB;

define_function: types FUNCTION FUNCTION_NAME LP parameters RP LCB function_body RCB
               | VOID FUNCTION FUNCTION_NAME LP parameters RP LCB void_function_body RCB;

function_body: statements RETURN identifier SEMICOLON
             | empty;

void_function_body: statements
                  | empty;

parameters: empty
          | parameter
          | parameter COMMA parameters;

parameter: INTEGER_TYPE INTEGER_IDENTIFIER
         | FLOAT_TYPE FLOAT_IDENTIFIER
         | STRING_TYPE STRING_IDENTIFIER
         | BOOLEAN_TYPE BOOLEAN_IDENTIFIER;

call_function: FUNCTION_NAME LP parameter_identifiers RP
             | FUNCTION_NAME LP RP;

parameter_identifiers: identifier
                     | identifier COMMA parameter_identifiers;

call_primitive_function: call_primitive_function_that_returns_integer
                       | call_primitive_function_that_returns_void
                       | call_primitive_function_that_returns_float
                       | call_primitive_function_that_returns_boolean;

call_primitive_function_that_returns_integer: GET_HEADING LP RP;


call_primitive_function_that_returns_void: READ_HEADING LP RP
                                         | READ_ALTITUDE LP RP 
                                         | READ_SPRAY_STATUS LP RP 
                                         | READ_TEMPERATURE LP RP
                                         | READ_WIFI_CONNECTION_INFORMATION LP RP
                                         | READ_WIFI_CONNECTION_STATUS LP RP
                                         | CLIMB_UP LP float_number RP
                                         | DROP_DOWN LP float_number RP
                                         | STOP_VERTICALLY LP RP
                                         | MOVE_FORWARD LP float_number RP
                                         | MOVE_BACKWARD LP float_number RP
                                         | STOP_HORIZONTALLY LP RP
                                         | TURN_LEFT LP integer_number RP
                                         | TURN_RIGHT LP integer_number RP
                                         | TURN_NORTH LP RP
                                         | TURN_EAST LP RP
                                         | TURN_WEST LP RP
                                         | TURN_SOUTH LP RP
                                         | TURN_NORTH_EAST LP RP
                                         | TURN_NORTH_WEST LP RP
                                         | TURN_SOUTH_EAST LP RP
                                         | TURN_SOUTH_WEST LP RP
                                         | TURN_ON_SPRAY LP RP
                                         | TURN_OFF_SPRAY LP RP
                                         | TURN LP direction RP
                                         | MOVE LP direction COMMA float_number RP;



call_primitive_function_that_returns_float: GET_ALTITUDE LP RP
                                          | GET_VERTICAL_VELOCITY LP RP
                                          | GET_HORIZONTAL_VELOCITY LP RP
                                          | GET_TEMPERATURE LP RP;


call_primitive_function_that_returns_boolean: CONNECT_DRONE_TO_WIFI LP string_factor COMMA string_factor RP
                                            | DISCONNECT_DRONE_FROM_WIFI LP RP
                                            | GET_SPRAY_STATUS LP RP
                                            | GET_WIFI_CONNECTION_STATUS LP RP;

direction: NORTH
          | EAST
          | WEST
          | SOUTH
          | NORTH_EAST
          | NORTH_WEST
          | SOUTH_EAST
          | SOUTH_WEST;

integer_operation: integer_operation add_subtract_operator integer_term
                 | integer_term;

integer_term: integer_term multiplication_division_operator integer_factor
            | integer_factor;

integer_factor: LP integer_operation RP 
              | integer_number;

integer_number: INTEGER 
              | INTEGER_IDENTIFIER;

float_operation: float_operation add_subtract_operator float_term
               | float_term;

float_term: float_term multiplication_division_operator float_factor
          | float_factor;

float_factor: LP float_operation RP | float_number;

float_number: FLOAT 
            | FLOAT_IDENTIFIER;

boolean_operation: boolean_operation boolean_operator boolean_term
                 | boolean_term;

boolean_term: LP boolean_expression RP
            | boolean_expression
            | LP boolean_term boolean_operator boolean_factor RP
            | boolean_factor
            | NOT LP boolean_factor RP;

boolean_expression: boolean_number_expression;

boolean_number_expression: integer_operation comparison_operator integer_operation
                         | float_operation comparison_operator float_operation;

boolean_factor: BOOLEAN
              | BOOLEAN_IDENTIFIER;

boolean_operator: AND
                | NAND
                | OR
                | NOR
                | XOR
                | NOT
                | EQUAL_OP
                | NOT_EQUAL_OP;

comparison_operator: LT
                   | LTE
                   | GT
                   | GTE
                   | EQUAL_OP
                   | NOT_EQUAL_OP;

multiplication_division_operator: MULTIPLICATION
                                | DIVISION;

add_subtract_operator: PLUS
                     | MINUS;

string_factor: STRING 
             | STRING_IDENTIFIER;

input: INPUT LP identifier RP;

output: print;

print: PRINT LP printables RP;
     | PRINTLINE LP printables RP;

printables: empty
          | printable_with_operation
          | string_printables;

printable_with_operation: integer_operation
                        | boolean_operation
                        | float_operation
                        | call_primitive_function_that_returns_integer
                        | call_primitive_function_that_returns_float
                        | call_primitive_function_that_returns_boolean;

string_printables: string_printable PLUS string_printables
                 | string_printable;

string_printable: STRING
                | STRING_IDENTIFIER;

identifier: STRING_IDENTIFIER
          | INTEGER_IDENTIFIER
          | FLOAT_IDENTIFIER
          | BOOLEAN_IDENTIFIER;

types: INTEGER_TYPE
     | FLOAT_TYPE
     | STRING_TYPE
     | BOOLEAN_TYPE;

empty: ;

%%
#include "lex.yy.c"
extern int yylineno;

int main()
{
  return yyparse();
}

int yyerror(char *s) 
{
  fprintf(stderr,"%s at line: %d with next token: %d!\n", s, yylineno, yychar); 
  printf("\r");
} 