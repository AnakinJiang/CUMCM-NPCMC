function h=calculate_h(year,month,day,jingdu,weidu,time)
%CALCULATE_H calculate tai_yang_gao_du_jiao

%ÿ������
m = [31,28,31,30,31,30,31,31,30,31,30,31];
%�ж����껹��ƽ��
if mod(year,400)==0 | (mod(year,100)~=0 & mod(year,4)==0)
    m(2)=29;
end
%��������
N = 0;
for i=1:month-1
    N = N + m(i);
end
N = N + day;
%����ʱ��
t = (time - 20 + 12*jingdu/pi)*pi/12;
%����̫����γ
b = 2*pi*(N-1)/365;
chiwei = (0.006918-0.399912*cos(b)+0.070257*sin(b)-0.006758*cos(2*b)+0.000907*sin(2*b)-0.002697*cos(3*b)+0.00148*sin(3*b));

%����̫���߶Ƚ�

h = asin(sin(weidu)*sin(chiwei)+cos(weidu)*cos(chiwei)*cos(t));



