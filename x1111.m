% 测量纸张厚度 y=a+bx 回归法
clear
clc
format long
%% 
data = [20 40 60 80 100 120 140 160 180; % 纸张数
    1.38 2.68 3.98 5.36 6.80 8.22 9.60 10.90 12.48]; % 厚度（mm）
delta_B = 0.02; % 仪器误差限
%% 
k = length(data)
xi = data(1,:)
yi = data(2,:)
%% 
x_bar = mean(xi)
y_bar = mean(yi)
x_2_bar = mean(xi.^2)
y_2_bar = mean(yi.^2)
xy_bar = mean(xi.*yi)
%% 
b = (x_bar*y_bar-xy_bar)/(x_bar^2-x_2_bar) % 单张厚度
a = y_bar - b*x_bar
r = (xy_bar-x_bar*y_bar)/(sqrt((x_2_bar-x_bar^2)*(y_2_bar-y_bar^2)))
%% 
u_a_b = b*sqrt(1/(k-2)*(1/(r^2)-1)) % b的A类不确定度
u_a_a = sqrt(x_2_bar)*u_a_b
u_b_b = (delta_B/sqrt(3))*sqrt(1/(k*(x_2_bar-x_bar^2))) % b的B类不确定度