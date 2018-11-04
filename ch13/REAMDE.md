## 文件结构

```
/sample ==> 生成pcode中间代码的词法分析和语法分析程序
        |——— scanner.l ==> 词法扫描器
        |——— lex.yy.c ==> flex根据.l文件自动生成的c语言代码
        |——— lex.yy.o ==> gcc编译lex.yy.c后生成的OBJ文件
        |——— parser.y ==> 语法分析规则
        |——— y.tab.c y.tab.h y.output ==> bison根据.y文件生成的LALR(1) 文法分析器
        |——— y.tab.o ==>gcc编译y.tab.c后生成的OBJ文件
        |——— tcc ==> 执行文件
        |——— test.c ==> 用于分析测试的文件
        |——— test.asm ==> 分析后生成的文件
        └─── Makefile ==> 文件间的依赖，便于编译
    
主目录下的文件结构类似sample1
```