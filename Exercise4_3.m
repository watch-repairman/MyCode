char='Please input m\n';%定义一个字符串
m=input(char);   %参数m:输入meter值
b=m*39.37;       %参数b,c：中间的过渡参数
c=fix(b/12);
inchs=mod(b,12)  %输出的inchs值
feet=mod(c,3)    %输出的feet值
yards=fix(c/3)   %输出的yards值





%命令行窗口代码：
>> Exercise4_3
Please input m
3.51

inchs =

    6.1887


feet =

     2


yards =

     3
