%{
#define T_WORD 1
int numChars=0;
int numLines=0;
int numWords=0;
%}

WORD        ([^ \t\n\r\a]+)

%%
\n          {numLines++;}
{WORD}      {
            // yyleng是flex中的一个全局变量，表示当前匹配字符串的长度
            numChars+=yyleng;numWords++;return T_WORD;}
<<EOF>>     {return 0;}
.           {numChars++;}
%%

int main()
{
    int token_type;
    while(token_type=yylex())
    {
        // yytext是flex中的全局变量，表示当前匹配的字符串字面值
        printf("word:\t%s\n",yytext);
    }
    printf("\nChars\tWords\tLines\n");
	printf("%d\t%d\t%d\n", numChars, numWords, numLines);
	return 0;
}

int yywrap()
{
    return 1;
}