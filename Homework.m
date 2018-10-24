%变量定义如下：
%c: 字符数 / w:单词数 / s:句子数 / L:代码行数 / k_L;空行数 / e:注释行数
function [y]=Homework(filename,item)                %定义函数
fid=fopen(filename);                                %读取txt文本，保存在fid中
[a,c]=fread(fid);                                   %把fid中的字符存到矩阵a中，把fid中的字符数存入c
w=1;s=0;e=0;l=1;k=0;                                %初始化各变量
for i=1:c                                           
    if a(i)==' ' || a(i)==10                        %当出现空格键或换行键时，记为一个单词
        w=w+1;
    end
    if a(i)=='.' || a(i)=='!' || a(i)=='?'          %当出现“。！？”时，记为一个句子
        s=s+1;
    end
    if a(i)==10 && a(i-2)~=10                       %当出现换行键且该行不是空行时，记为一个代码行
        l=l+1;
    end
    if a(i)==10 && a(i+2)==10                       %当连续出现换行键时，记为一个空行
        k=k+1;
    end
    if a(i)=='%'                                    %当出现%时，记为一个注释行  
        e=e+1;
    end
end
switch item                                         %输入不同的参数，得出对应的函数值
    case 'c'
        y=c;
    case 'w'
        y=w-k;                                      %因为空白行没有单词，所有需要减去空行数
    case 's'
        y=s;
    case 'l'
        y=l;
    case 'k'
        y=k;
    case 'e'
        y=e;
end     
