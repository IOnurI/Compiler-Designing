
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     KEYWORDIF = 258,
     KEYWORDELSE = 259,
     FOR = 260,
     OpenBr = 261,
     NUM = 262,
     CloseBR = 263,
     Increment = 264,
     Decrement = 265,
     CHAR = 266,
     SEMIC = 267,
     Assign = 268,
     OTHER = 269,
     PRINT = 270,
     SQUARE = 271,
     MUL = 272,
     DIV = 273,
     ADD = 274,
     SUB = 275,
     EOL = 276,
     ABS = 277,
     COMMA = 278,
     INFINITE = 279,
     MOD = 280,
     LessThan = 281,
     GreaterThan = 282,
     Equal = 283,
     LessEqual = 284,
     GreaterEqual = 285,
     NotEqual = 286,
     INTEGER = 287,
     CHARARR = 288,
     DOUBLE = 289,
     EQUAL = 290,
     NEQUAL = 291,
     GREATER = 292,
     LESS = 293,
     SIZE = 294,
     WHILE = 295,
     FUNCTION = 296
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 24 "pars.y"

	  char name[20];
    int number;
	float fl;



/* Line 1676 of yacc.c  */
#line 101 "pars.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


