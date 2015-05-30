clear
clc
close all

% M28LinT1 M_Extension_plot

% 1)Initiation
Nx = 50; %number of points in x (time kyr)
Ny = 40; %number of points in y (Z, M value)

Mb = 0.2;
Me = 0.8;

Tb = 0;
Te = 1000;

dT = (Te/20 - Tb/20) / Nx;   
% divided by 20, to transfer kyr to km: 5cm/yr = 50m/kyr = 1/20 km/kyr
dM = (Me-Mb)/Ny;
%T = linspace(0,1000,Nx);
%M = linspace(0.2,0.8,Ny);
T = (0 : dT : 1000);
M = (Mb : dM : Me);
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
M28Lin_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B175kyr~E300kyr @M(0.2~0.26)

Crgt_1_TB = (175/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (300/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

Crgt_1_Mb = (0.2 - Mb) / dM + 1; 
Crgt_1_Mb = round(Crgt_1_Mb);

Crgt_1_Me = (0.26 - Mb) / dM + 1; 
Crgt_1_Me = round(Crgt_1_Me);

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B330kyr~E400kyr @M(0.2~0.5)
Crgt_2_TB = (330/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (400/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = (0.2 - Mb) / dM + 1; 
Crgt_2_Mb = round(Crgt_2_Mb);

Crgt_2_Me = (0.5 - Mb) / dM + 1; 
Crgt_2_Me = round(Crgt_2_Me);

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_3 @B725kyr~E900kyr @M(0.2~0.5)
Crgt_3_TB = (725/20 - 0) / dT + 1;
Crgt_3_TB = round(Crgt_3_TB);

Crgt_3_TE = (900/20 - 0) / dT + 1;
Crgt_3_TE = round(Crgt_3_TE);

Crgt_3_Mb = (0.2 - Mb) / dM + 1; 
Crgt_3_Mb = round(Crgt_3_Mb);

Crgt_3_Me = (0.5 - Mb) / dM + 1; 
Crgt_3_Me = round(Crgt_3_Me);

    errorbar(T(Crgt_3_TB:Crgt_3_TE),...
        0.5 * (M(Crgt_3_Mb) + M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),...
        0.5 * abs(M(Crgt_3_Mb) - M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
% 2.2)Mul (=2)
%Mul_1 @B350kyr~E700kyr @M(0.53~0.74)
Mul_1_TB = (350/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (700/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = (0.53 - Mb) / dM + 1; 
Mul_1_Mb = round(Mul_1_Mb);

Mul_1_Me = (0.74 - Mb) / dM + 1; 
Mul_1_Me = round(Mul_1_Me);

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
% 2.3)IFJ (=3)
%IFJ_1 @B650kyr~E910kyr @M(0.5~0.8)
IFJ_1_TB = (650/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (910/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);

IFJ_1_Mb = (0.5 - Mb) / dM + 1; 
IFJ_1_Mb = round(IFJ_1_Mb);

IFJ_1_Me = (0.8 - Mb) / dM + 1; 
IFJ_1_Me = round(IFJ_1_Me);

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M28LinT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt_1','Crgt_2','Crgt_3','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





