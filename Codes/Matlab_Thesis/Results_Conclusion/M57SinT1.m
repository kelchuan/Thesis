clear
clc
close all

% M57SinT1 M_Extension_plot

% 1)Initiation
Nx = 50; %number of points in x (time kyr)
Ny = 40; %number of points in y (Z, M value)

Mb = 0.5;
Me = 0.7;

Tb = 0;
Te = 1000;

dT = (Te/20 - Tb/20) / Nx;   
% divided by 20, to transfer kyr to km: 5cm/yr = 50m/kyr = 1/20 km/kyr

dM = (Me-Mb)/Ny;
%T = linspace(0,1000,Nx);
%M = linspace(0.2,0.8,Ny);
T = (0 : dT : 1000);
M = (Me-Mb) * sin(pi/2*(0:Ny-1)/Ny) + Mb;
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
M57Sin_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])

% 2.1)Crgt 
%Crgt_1 @B57.5~E252.5 @M(0.5,0.6994)(1,39)

Crgt_1_TB = (57.5/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (252.5/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 39;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B400kyr~E470kyr  @M(0.5,0.6994)(1,39)
Crgt_2_TB = (400/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (470/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 1;
Crgt_2_Me = 39;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_3 @B490kyr~E600kyr @M(0.5,0.6994)(1,39) 
Crgt_3_TB = (490/20 - 0) / dT + 1;
Crgt_3_TB = round(Crgt_3_TB);

Crgt_3_TE = (600/20 - 0) / dT + 1;
Crgt_3_TE = round(Crgt_3_TE);

Crgt_3_Mb = 1;
Crgt_3_Me = 39;

    errorbar(T(Crgt_3_TB:Crgt_3_TE),...
        0.5 * (M(Crgt_3_Mb) + M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),...
        0.5 * abs(M(Crgt_3_Mb) - M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_4 @B615kyr~720kyr @M(0.5,0.5467)(1,7)
Crgt_4_TB = (615/20 - 0) / dT + 1;
Crgt_4_TB = round(Crgt_4_TB);

Crgt_4_TE = (720/20 - 0) / dT + 1;
Crgt_4_TE = round(Crgt_4_TE);
 
Crgt_4_Mb = 1;
Crgt_4_Me = 7;

    errorbar(T(Crgt_4_TB:Crgt_4_TE),...
        0.5 * (M(Crgt_4_Mb) + M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),...
        0.5 * abs(M(Crgt_4_Mb) - M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on

% 2.2)Mul 
%Mul_1 @B600kyr~1000kyr @M(0.6521,0.6944)(23,39)
Mul_1_TB = (600/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (1000/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 23;
Mul_1_Me = 39;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B700kyr~1000kyr @M(0.5,0.6176)(1,17)
Mul_2_TB = (700/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (1000/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = 1;
Mul_2_Me = 17;

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on

%Mw_1 @B252.5kyr~E255kyr @M(0.5,0.6994)(1,39)
Mw_1_TB = (252.5/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (255/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 39;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
    
%AF_1 @B360kyr~E550kyr @M(0.5,0.5313)(1,5)
AF_1_TB = (360/20 - 0) / dT + 1;
AF_1_TB = round(AF_1_TB);

AF_1_TE = (550/20 - 0) / dT + 1;
AF_1_TE = round(AF_1_TE);

AF_1_Mb = 1;
AF_1_Me = 5;

    errorbar(T(AF_1_TB:AF_1_TE),...
        0.5 * (M(AF_1_Mb) + M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),...
        0.5 * abs(M(AF_1_Mb) - M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_2 @B400kyr~E500kyr @M(0.6045,0.6299)(15,19)
AF_2_TB = (400/20 - 0) / dT + 1;
AF_2_TB = round(AF_2_TB);

AF_2_TE = (500/20 - 0) / dT + 1;
AF_2_TE = round(AF_2_TE);

AF_2_Mb = 15;
AF_2_Me = 19;

    errorbar(T(AF_2_TB:AF_2_TE),...
        0.5 * (M(AF_2_Mb) + M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),...
        0.5 * abs(M(AF_2_Mb) - M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_3 @B650kyr~E850kyr @M(0.5,0.6045)(1,15)
AF_3_TB = (650/20 - 0) / dT + 1;
AF_3_TB = round(AF_3_TB);

AF_3_TE = (850/20 - 0) / dT + 1;
AF_3_TE = round(AF_3_TE);

AF_3_Mb = 1;
AF_3_Me = 15;

    errorbar(T(AF_3_TB:AF_3_TE),...
        0.5 * (M(AF_3_Mb) + M(AF_3_Me)) * ones(size(T(AF_3_TB:AF_3_TE))),...
        0.5 * abs(M(AF_3_Mb) - M(AF_3_Me)) * ones(size(T(AF_3_TB:AF_3_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M57SinT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.5 0.7])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





