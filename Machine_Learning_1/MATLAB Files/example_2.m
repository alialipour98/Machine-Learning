clc;
clear;
close all;

c1 = [0   0.5 1 1 1.5 1.5 2 2 2.5   % x1
      0.5 2   1 3 0   2   1 3 2]';   % x2
  
c2 = [-2.5 -2 -2 -0.5 0.5  0.5  1 1.5  1.5      % x1
      -1    0  1 -0.5 0.5 -0.5 -1 0.5 -0.5]';    % x2

mu1 = mean(c1, 1)';
mu2 = mean(c2, 1)';

sigma1 = cov(c1);
sigma2 = cov(c2);

detsigma1 = det(sigma1);
detsigma2 = det(sigma2);

x1 = sym('x1');
x2 = sym('x2');

x = [x1
     x2];

% Class Example
% 
% mu1 = [3
%        6];
% sigma1 = [1/2 0
%           0    2];
% 
% mu2 = [3
%        -2];
% sigma2 = [2 0
%           0    2];

W1  = (-1/2)*sigma1^-1;
w1  = (sigma1^-1)*mu1;
w10 = (-1/2)*mu1'*sigma1^-1*mu1 + (-1/2)*det(sigma1);
 
W2  = (-1/2)*sigma2^-1;
w2  = (sigma2^-1)*mu2;
w20 = (-1/2)*mu2'*sigma2^-1*mu2 + (-1/2)*det(sigma2);
 
g1 = x'*W1*x + w1'*x + w10;
g2 = x'*W2*x + w2'*x + w20;
 
g = g1-g2;
 
 
 
 
 
 
 
 