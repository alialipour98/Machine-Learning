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

d = 2; 

P1 = -(d/2)*log(2*pi) - (1/2)*log(detsigma1) - (1/2)*(x-mu1)'*(sigma1^-1)*(x-mu1);
P2 = -(d/2)*log(2*pi) - (1/2)*log(detsigma2) - (1/2)*(x-mu2)'*(sigma2^-1)*(x-mu2);
 
P  = P1 - P2; 
 
 
 
 
 