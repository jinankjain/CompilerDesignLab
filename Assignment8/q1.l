%{

	int id[10000019], lit[10000019], key[10000019];
	int hash(char *s)
	{
		int h = 0;
		int i = 0;
		int ctr = 0;
		char *c = s;
		
		while(*c!=NULL)
		{
			c++;
			ctr++;
		}
		
		for(i = ctr-1; i >= 0; i--)
		{
			h = (s[i] + 128*h)%10000019;
		}
		printf("%d", h);
		return h;
	}

	int insert(int idi, char *s)
	{
		if(idi==1)
		{
			if (id[hash(s)] == 0)
			{
				id[hash(s)] = 1;
			}
			return hash(s);
		}
		else if(idi==2)
		{
			if (lit[hash(s)] == 0)
			{
				lit[hash(s)] = 1;
			}
			return hash(s);
		}
		else if(idi==3)
		{
			if (key[hash(s)] == 0)
			{
				key[hash(s)] = 1;
			}
			return hash(s);
		}
	}

%}

string	[_a-zA-Z]?\"(\\.|[^\\"])*\"
number	[+-]?[0-9]+([.][0-9]+)?([e|E][0-9]*)?
literal ([+-]?[0-9]+([.][0-9]+)?([e|E][0-9]*)?)|([_a-zA-Z]?\"(\\.|[^\\"])*\")

keyword	"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while"
ID [_a-zA-Z][_a-zA-Z0-9]*
operator	"=="|"!="|"<="|">=""*="|"/="|"+="|"-="|"**"|"*"[_a-zA-z]|[_a-zA-z]"*""++"|"--""<"|">"|"!"|"="|"*"|"/"|"+"|"-"

%%
{literal}	printf("%s\t\t<LIT_NUM,%d>\n",yytext,insert(yytext,2));
{keyword}	printf("%s\t\t<KEYWORD,%d>\n",yytext,insert(yytext,0));
{ID}		printf("%s\t\t<ID,%d>\n",yytext,insert(yytext,1));
{operator}	/*Ignore operators*/;
[ \t\n;]	/*Ignore whitespace*/;

%%

int yywrap(void) {
    return 1;
}

int main(void) {
	memset(key,0,sizeof(key));
	memset(lit,0,sizeof(lit));
	memset(id,0,sizeof(id));
    yylex();
    return 0;
}