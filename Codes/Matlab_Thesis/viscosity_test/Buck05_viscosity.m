%Viscosity for 05 Buck

clear 
clc
close all

Ts = 283;
T0 = 1273
n = 3.05
R = 8.314;
epsilon=10^-14

vis_0 = 0.125*10^-17;
E = 276*10^3;

T = linspace(Ts,T0,1000)


viscosity = vis_0^(-1/n) * exp(E/n/R*(1./T)) * epsilon^(1/n - 1);
semilogy(T,viscosity)