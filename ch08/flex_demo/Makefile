
run:word-spliter
	# word-spliter.l源文件作为输入
	./word-spliter < word-spliter.l


word-spliter:lex.yy.c
	gcc -o word-spliter lex.yy.c
	# 原作者写的是 flex $@ $<
	# $@表示冒号前的参数   $<表示冒号后的参数
	
lex.yy.c:word-spliter.l
	flex word-spliter.l
	# 原作者写的是 flex $< 
	# <表示冒号后的参数


