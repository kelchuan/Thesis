clc
clear
close all

% plot the M_type along z axis

%initialization
Mb = 0.2;
Me = 0.8;

z = linspace(0, 19 / 20, 20);



% type 1 linear
M1 = (Me - Mb) * z + Mb;

Int_M_Lin = sum(M1);
Avg_M_Lin = Int_M_Lin / 20

plot(z*20, M1, 'r','LineWidth',3)
hold on



% type 2 sinusoidal

M2 = (Me - Mb) * sin( z * pi / 2 ) + Mb;

Int_M_Sin = sum(M2);
Avg_M_Sin = Int_M_Sin / 20

plot(z*20, M2, 'b','LineWidth',3)
hold on



% type 3 sqrt

M3 = (Me - Mb) * sqrt(z) + Mb;

Int_M_Sqrt = sum(M3);
Avg_M_Sqrt = Int_M_Sqrt / 20

plot(z*20, M3, 'm','LineWidth',3)
hold on

hold off

figure

dM1 = diff(M1);
plot(z(1:19)*20 + 1, dM1, 'r','LineWidth',3)
hold on

dM2 = diff(M2);
plot(z(1:19)*20 + 1, dM2, 'b*','LineWidth',3)
hold on

dM3 = diff(M3);
plot(z(1:19)*20 + 1, dM3, 'm--','LineWidth',3)

%{
% type 4 one third

M4 = (Me - Mb) * z.^(1/3) + Mb;
%plot(z*20, M4, 'y')
hold on

% type 5 one third

M4 = (Me - Mb) * z.^(1/4) + Mb;
%plot(z, M4, 'r')
hold on

M0 = z./z * 0.5;
plot(z*20, M0, 'color', 'k', 'LineWidth',3)

%}

ylabel('M')
xlabel('Z-axis elements from front to end')