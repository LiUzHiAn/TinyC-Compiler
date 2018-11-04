CC=gcc
OUT=tcc
OBJ= lex.yy.o  y.tab.o 
SCANNER=scanner.l
PARSER=parser.y 


build:$(OUT)

run:$(OUT)
	./$(OUT)< test.c > test.asm

clean:
	rm -f *.o lex.yy.c y.tab.c y.tab.h y.output $(OUT)


y.tab.c:$(PARSER)
	bison -vdty	$<

lex.yy.c:$(SCANNER) y.tab.c 
	flex $<

$(OUT): $(OBJ)
	$(CC) -o $(OUT) $(OBJ)