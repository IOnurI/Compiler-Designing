%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);

%}

%token KEYWORDIF KEYWORDELSE
%token FOR OpenBr NUM CloseBR Increment Decrement CHAR SEMIC Assign OTHER PRINT
%token SQUARE
%token MUL DIV
%token ADD SUB  EOL ABS COMMA INFINITE MOD

%token LessThan GreaterThan Equal LessEqual GreaterEqual NotEqual              	
%token INTEGER CHARARR DOUBLE EQUAL NEQUAL GREATER LESS SIZE WHILE FUNCTION



%type <name> CHAR
%type <number> NUM
%type <number> exp
%union{
	  char name[20];
    int number;
	float fl;
}

%%

prog:
  stmts
  input
  line
;


input:
|   line input
;

line:
    exp SEMIC {printf("%d\n", $1); }
|   SEMIC;

exp:
    NUM {$$ = $1; }
|   exp ADD exp {$$ = $1 + $3;}
|   exp SUB exp {$$ = $1 - $3;}
|   exp MUL exp {$$ = $1 * $3;}
|   exp DIV exp {$$ = $1 / $3;}

|   exp SQUARE  {$$ = $1 * $1;}
|   exp MOD exp {$$ = $1 % $3;}
;


stmts:
		| stmt SEMIC stmts

stmt:
		  PRINT OpenBr CHAR CloseBR SEMIC {
				printf("Printed --> %s", $3);
		}
		| PRINT OpenBr NUM CloseBR SEMIC{
				printf("Printed --> %d", $3);
		}
		
		| OTHER	{	printf("Syntax Error!");}

		| KEYWORDIF OpenBr CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		| KEYWORDIF OpenBr CHAR CloseBR SEMIC {printf("\n Syntax Accepted \n");}
		| KEYWORDIF OpenBr NUM LessEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		| KEYWORDIF OpenBr NUM GreaterEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		| KEYWORDIF OpenBr NUM GreaterThan NUM CloseBR SEMIC {printf("\n Syntax Accepted \n");}
		|  KEYWORDIF OpenBr NUM LessThan NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDIF OpenBr NUM Equal NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDIF OpenBr NUM NotEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}

		|  KEYWORDELSE OpenBr CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr CHAR CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM LessEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM GreaterEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM GreaterThan NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM LessThan NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM Equal NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  KEYWORDELSE OpenBr NUM NotEqual NUM CloseBR SEMIC{printf("\n Syntax Accepted \n");}

		|  CHAR EQUAL NUM SEMIC{printf("\n Syntax Accepted \n");}

		|  FOR OpenBr VariableState COMMA Condition COMMA Variable CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  FOR OpenBr INFINITE CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|  WHILE OpenBr Condition CloseBR SEMIC{printf("\n Syntax Accepted \n");}
		|   WHILE OpenBr INFINITE CloseBR SEMIC{printf("\n Syntax Accepted \n");}


;


Variable : CHAR Assign CHAR | CHAR Assign NUM 
Condition : CHAR ConditionState CHAR | CHAR ConditionState NUM 
VariableState : CHAR Increment | CHAR Decrement 
ConditionState : LessThan | GreaterThan | Equal | LessEqual | GreaterEqual | NotEqual ;


%%

int yyerror(char *s){
	return yyparse();
}

int main()
{
    yyparse();
    return yylex();
}
