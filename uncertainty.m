% 直接测量量的不确定度
clear
clc
format long
%%
data = [1.4990 1.4985 1.4987 1.4991 1.4976 1.4975]; % 数据
delta_B = 5e-4; % 误差限
%%
avg = mean(data) % 算术平均值，真值的最佳估计
s_x = sqrt(sum((data-avg).^2)/(length(data)-1)) % 标准偏差
s_x_bar = s_x/sqrt(length(data)) % 平均值的标准差，A类评定的标准不确定度分量
%%
K = sqrt(3); % 包含因子
u_b = delta_B / K % B类不确定度分量
%%
% 不确定度的方差合成
u = sqrt(s_x_bar^2+u_b^2)
% 注意：不确定度只取一位，测量结果与不确定度对齐，四舍六入五凑偶