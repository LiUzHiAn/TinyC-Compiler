### 文件结构
> 

```
/flex_demo ==> 演示flex工作原理
        |——— hide-digits.l ==> 屏蔽所有数字的词法生成文件
        |——— lex.yy.c ==> flex根据.l文件自动生成的c语言代码
        |——— hide-digit ==> 屏蔽数字的可执行文件
        |
        |——— word-spliter.l ==> 单词分隔器的词法生成文件
        |——— word-spliter ==> 单词分隔器的可执行文件
        |
        └─── Makefile ==> word-spliter文件间的依赖

/samples ==> 用于测试scanner
        |——— *.c ==> 测试源程序
        └─── *.lex ==> 扫描后的词法分析结果
    
Makefile ==> scanner文件间的依赖
test.sh ==> 测试/samples中.c文件的脚本
token.h ==> TinyC中所有的token类型 
lex.yy.c ==> flex根据.l文件自动生成
```

