%option main
digit   [0-9]
boolean TRUE|FALSE
signs   [-+]

integer {signs}?{digit}+
float   {signs}?{digit}*(\.)?{digit}+

string  \"[^\"]*\"
character   {digit}|[A-Za-z]

commentBeginning COMMENT
commentEnding END_COMMENT

comment     {commentBeginning}(.)*{commentEnding}

identifier  [A-Za-z]{character}*

%%
ACTIVATE_DRONE                      printf("ACTIVATE_DRONE \n");
STOP_DRONE                          printf("\nSTOP_DRONE ");
{boolean}                           printf("BOOLEAN ");
{integer}                           printf("INTEGER ");
{float}                             printf("FLOAT ");
{string}                            printf("STRING ");
{comment}                           printf("COMMENT \n");
IF                                  printf("IF ");
ELSE                                printf("ELSE ");
FOR                                 printf("FOR ");
WHILE                               printf("WHILE ");
RETURN                              printf("RETURN ");
NULL                                printf("NULL ");
CONNECT_DRONE_TO_WIFI               printf("CONNECT_DRONE_TO_WIFI ");
DISCONNECT_DRONE_FROM_WIFI          printf("DISCONNECT_DRONE_FROM_WIFI ");
READ_HEADING                        printf("READ_HEADING ");
READ_ALTITUDE                       printf("READ_ALTITUDE ");
READ_SPRAY_STATUS                   printf("READ_SPRAY_STATUS ");
READ_TEMPERATURE                    printf("READ_TEMPERATURE ");
READ_WIFI_CONNECTION_STATUS         printf("READ_WIFI_CONNECTION_STATUS ");
READ_WIFI_CONNECTION_INFORMATION    printf("READ_WIFI_CONNECTION_INFORMATION ");
GET_ALTITUDE                        printf("GET_ALTITUDE ");
GET_HEADING                         printf("GET_HEADING ");
GET_SPRAY_STATUS                    printf("GET_SPRAY_STATUS ");
GET_HORIZONTAL_VELOCITY             printf("GET_HORIZONTAL_VELOCITY ");
GET_VERTICAL_VELOCITY               printf("GET_VERTICAL_VELOCITY ");
CLIMP_UP                            printf("CLIMP_UP ");
DROP_DOWN                           printf("DROP_DOWN ");
STOP_VERTICALLY                     printf("STOP_VERTICALLY ");
MOVE_FORWARD                        printf("MOVE_FORWARD ");
MOVE_BACKWARD                       printf("MOVE_BACKWARD ");
STOP_HORIZONTALLY                   printf("STOP_HORIZONTALLY ");
TURN_LEFT                           printf("TURN_LEFT ");
TURN_RIGHT                          printf("TURN_RIGHT ");
TURN_NORTH                          printf("TURN_NORTH ");
TURN_EAST                           printf("TURN_EAST ");
TURN_WEST                           printf("TURN_WEST ");
TURN_SOUTH                          printf("TURN_SOUTH ");
TURN_NORTH_EAST                     printf("TURN_NORTH_EAST ");
TURN_NORTH_WEST                     printf("TURN_NORTH_WEST ");
TURN_SOUTH_EAST                     printf("TURN_SOUTH_EAST ");
TURN_SOUTH_WEST                     printf("TURN_SOUTH_WEST ");
TURN_ON_SPRAY                       printf("TURN_ON_SPRAY ");
TURN_OFF_SPRAY                      printf("TURN_OFF_SPRAY ");
\+\+                                printf("INCREMENT_ONE ");
\-\-                                printf("DECREMENT_ONE ");
\+                                  printf("PLUS ");
\-                                  printf("MINUS ");
\*                                  printf("MULTIPLICATION ");
\/                                  printf("DIVISION ");
\,                                  printf("COMMA ");
\(                                  printf("LP ");
\)                                  printf("RP ");
\{                                  printf("LCB\n");
\}                                  printf("RCB\n");
\[                                  printf("LSB ");
\]                                  printf("RSB ");
OR                                  printf("OR ");
NOR                                 printf("NOR ");
AND                                 printf("AND ");
NAND                                printf("NAND ");
XOR                                 printf("XOR ");
NOT                                 printf("NOT ");
\<                                  printf("LT ");
\<\=                                printf("LTE ");
\>                                  printf("GT ");
\>\=                                printf("GTE ");
\=\=                                printf("EQUAL_OP ");
NOT\=                               printf("NOT_EQUAL_OP ");
FUNCTION                            printf("FUNCTION ");
PRINT                               printf("PRINT ");
PRINTLINE                           printf("PRINTLINE ");
INPUT                               printf("INPUT ");
VOID                                printf("VOID ");
BOOLEAN                             printf("BOOLEAN_TYPE ");
INT                                 printf("INTEGER_TYPE ");
CONSTANT_INT                        printf("CONSTANT_INTEGER_TYPE ");
FLOAT                               printf("FLOAT_TYPE ");
CONSTANT_FLOAT                      printf("CONSTANT_FLOAT_TYPE ");
STRING                              printf("STRING_TYPE ");
CONSTANT_STRING                     printf("CONSTANT_STRING_TYPE ");
{identifier}                        printf("IDENTIFIER ");
\;                                  printf("SEMICOLON \n");
\<-                                 printf("ASSIGN ");
[ \t\n]        ;
%%