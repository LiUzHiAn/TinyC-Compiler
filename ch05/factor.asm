;int main(){
FUNC @main:

    ;int i;
    var i

    ;i=0;
    push 0
    pop i

    ;while(i<10){
    _beg_while:
        push i
        push 10
        cmplt

    jz _end_while

        ;i=i+1
        push i
        push 1 
        add
        pop i

        ;if(i==3||i==5){
        _beg_if_1:
            push i
            push 3
            cmpeq
            push i
            push 5
            cmpeq
            or
            
        jz _end_if_1

            ;continue
            jmp _beg_while
        ;}
        _end_if_1:

        ;if(i==8){
        _beg_if_2:
            push i
            push 8
            cmpeq
        
        jz _end_if_2
            
            ;break
            jmp _end_while
        ;}
        _end_if_2:

        ;print("%d!=%d",i,factor(i));
        push i
        push i
        $factor
        print "%d!=%d"
    ;}
    jmp _beg_while

    _end_while:

    ;return 0;
    ret 0
;}
ENDFUNC


;int factor(int n){
FUNC @factor:
    arg n

    ;if (n<2){
    _beg_if_3:

        push n
        push 2
        cmplt
        jz  _end_if_3

        ;return 1;
        ret 1

    ;}
    _end_if_3:
    ;return factor(n-1)*n;
    push n
    push n
    push 1
    sub
    $factor
    mul
    ret ~
;}
ENDFUNC










