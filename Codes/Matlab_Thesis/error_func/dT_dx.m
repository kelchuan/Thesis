clear
clc
close all
% dT/dx
K = 10^-6; %thermal diffusivity mm^2/s
N = 1000;
x = linspace(0, 30000, N);
y = linspace(0, -20000, N);

u = 1 * 10 ^ -10; % m/s

[xmat, ymat] = meshgrid(x,y);

Tx = - ymat/2/sqrt(pi) * K / u .* exp(-ymat.^2*u/4/K./xmat) .* (K/u*xmat).^-(3/2);


mesh(xmat,ymat,Tx)