# lex-yacc
LEX code to detect the tokens (datatype, variable name, equal to operator, quama, number, Semicolon ).
YACC code to detect the syntax of variable declaration and definition.

Steps to run execute program in ubuntu:
  1) lex Main.lex
  2) yacc -d Main.y
  3) cc lex.yy.c y.tab.c
  4) ./a.out

Sample input format:
int a=10,b;
