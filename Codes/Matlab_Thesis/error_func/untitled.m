clear
clc

N = 1000

T0 = 0
T1 = 1300
% Tb = linspace(T0,T1,N)

x = linspace(-30000,30000,N)
u = 9.7*10^-10
K = 1*10^-6
y = linspace(0,20000,N)





[xmat, ymat] = meshgrid(x,y);
eta=(ymat-5000)./(2*sqrt(K*abs(xmat)/u));
Tb = (T1-T0)*2/sqrt(pi)*erf(eta);


    Tb(1:333,:) = zeros(333,1000)




mesh(xmat,ymat,Tb)