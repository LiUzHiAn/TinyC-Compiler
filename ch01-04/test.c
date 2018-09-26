// 为了利用gcc来编译该文件，TinyC编译器会忽略这行
#include "for_gcc_build.hh"  


int factor(int i)
{
    if (i<2)
    {
        return 1;
    }
    return i*factor(i-1);
}

int main()
{
    int i;
    i=0;
    while(i<10)
    {
        i=i+1;
        if (i==3||i==5)
        {
            continue;
        }
        if(i==0)
        {
            break;
        }
        print("%d!=%d",i,factor(i));
    }
    return 0;
}

