parser: y.tab.c
	gcc -o parser y.tab.c

y.tab.c: CS315f21_team08.yacc lex.yy.c
	yacc CS315f21_team08.yacc

lex.yy.c: CS315f21_team08.lex
	lex CS315f21_team08.lex