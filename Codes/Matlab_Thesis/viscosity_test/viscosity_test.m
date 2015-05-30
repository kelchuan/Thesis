clear 
clc
close all

Ts = 273;
T0=1573;
R = 8.314;

vis_0 = 1*10^19;
E = 86*10^3;

T = linspace(Ts,T0,1000)


viscosity = vis_0*exp(E/R*(1./T-1/T0));
semilogy(T,viscosity)