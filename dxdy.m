% ��
clear
clc
format long;
%%
% ���ݣ���һ��Ϊx���ڶ���Ϊy������Ϊy=a+bx��������ż��������
data = [48.7 58.7 68.7 78.7 88.7 98.7;
        2.01072 2.42176 2.82374 3.22131 3.61989 4.03528];
%%
k = length(data)
n = k/2
dx = data(1,n+1:end)- data(1,1:n)
dy = data(2,n+1:end)- data(2,1:n)
bn = dy./dx
b_bar = mean(bn) % ����b_bar
a_bar = (sum(data(2,:))-b_bar*sum(data(1,:)))/k % ����a_bar
%%
u_b = sqrt(sum((bn - b_bar).^2)/(n*(n-1))) % b_bar��A�಻ȷ����