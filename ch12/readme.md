## 勘误

在`12.3 利用符号的优先级来解决冲突`的最后

（2.4） 若 a 的优先级 等于 b 的优先级，则根据 a 和 b 的结合方式：

（2.4.1） 若 a 和 b 都为左结合，则 M[I, a] = reduce B -> v ；`而不是`shift NEXT(I, a)

（2.4.2） 若 a 和 b 都为右结合，则 M[I, a] = shift NEXT(I, a)。 `而不是` reduce B -> v 
