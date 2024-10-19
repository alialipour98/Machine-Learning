clc;
clear;
close all;

F  = @(x, a, b)  (1/(pi*b)) * (1 ./ (1 + ((x-a)/b).^2));

PW1 = @(x, a, b) F(x, a(1), b)./(F(x, a(1), b) + F(x, a(2), b));
PW2 = @(x, a, b) F(x, a(2), b)./(F(x, a(1), b) + F(x, a(2), b));

x = linspace(-4, 10, 200);

P1 = PW1(x, [3, 5], 1);
P2 = PW2(x, [3, 5], 1);

plot(x, P1, 'Color', 'r', 'LineWidth', 2, 'Display', 'P(x|\omega_1)');
hold on;
plot(x, P2, 'Color', 'b', 'LineWidth', 2, 'Display', 'P(x|\omega_2)');
title('Cauchy Distribution');
legend();
xlabel('x')
ylabel('P(x|w_i)')
