%�����������£�
%c: �ַ��� / w:������ / s:������ / L:�������� / k_L;������ / e:ע������
function [y]=Homework(filename,item)
fid=fopen(filename); %��ȡtxt�ı���������fid��
[a,c]=fread(fid); %��fid�е��ַ��浽����a�У���fid�е��ַ�������c
w=1;s=0;e=0;l=1;k=0;
for i=1:c
    if a(i)==' ' || a(i)==10  %�����ֿո�����м�ʱ����Ϊһ������
        w=w+1;
    end
    if a(i)=='.' || a(i)=='!' || a(i)=='?' %�����֡���������ʱ����Ϊһ������
        s=s+1;
    end
    if a(i)==10 && a(i-2)~=10  %�����ֻ��м��Ҹ��в��ǿ���ʱ����Ϊһ��������
        l=l+1;
    end
    if a(i)==10 && a(i+2)==10 %���������ֻ��м�ʱ����Ϊһ������
        k=k+1;
    end
    if a(i)=='%' %������%ʱ����Ϊһ��ע����  
        e=e+1;
    end
end
switch item
    case 'c'
        y=c;
    case 'w'
        y=w-k;    %��Ϊ�հ���û�е��ʣ�������Ҫ��ȥ������
    case 's'
        y=s;
    case 'l'
        y=l;
    case 'k'
        y=k;
    case 'e'
        y=e;
end


        