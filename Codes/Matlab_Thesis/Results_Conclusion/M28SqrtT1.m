clear
clc
close all

% M28SqrtT1 M_Extension_plot

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
M = (Me-Mb) * sqrt((0:Ny-1)/Ny) + Mb;
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
%M28Sqrt_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B230kyr~E370kyr @M(0.2,0.8)
Crgt_1_TB = (230/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (370/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 39;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B435kyr~525kyr  @M(0.2,0.3342)(1,3)
Crgt_2_TB = (435/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (525/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 1;
Crgt_2_Me = 3;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Mul_1 @B430kyr~E490kyr  @M(0.7196,0.7848)(31,39)
Mul_1_TB = (430/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (490/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 31;
Mul_1_Me = 39;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on

%Mw_1 @B100kyr~E102.5kyr  @M(0.2,0.3897)(1,5))
Mw_1_TB = (100/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (102.5/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 5;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%Mw_2 @B160kyr~E165kyr  @M(0.2,0.6837)(1,27)
Mw_2_TB = (160/20 - 0) / dT + 1;
Mw_2_TB = round(Mw_2_TB);

Mw_2_TE = (165/20 - 0) / dT + 1;
Mw_2_TE = round(Mw_2_TE);

Mw_2_Mb = 1;
Mw_2_Me = 27;

    errorbar(T(Mw_2_TB:Mw_2_TE),...
        0.5 * (M(Mw_2_Mb) + M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),...
        0.5 * abs(M(Mw_2_Mb) - M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
    
%Mw_3 @B487.5kyr~E490kyr  @M(0.2,0.4324)(1,7)
Mw_3_TB = (487.5/20 - 0) / dT + 1;
Mw_3_TB = round(Mw_3_TB);

Mw_3_TE = (490/20 - 0) / dT + 1;
Mw_3_TE = round(Mw_3_TE);

Mw_3_Mb = 1;
Mw_3_Me = 7;

    errorbar(T(Mw_3_TB:Mw_3_TE),...
        0.5 * (M(Mw_3_Mb) + M(Mw_3_Me)) * ones(size(T(Mw_3_TB:Mw_3_TE))),...
        0.5 * abs(M(Mw_3_Mb) - M(Mw_3_Me)) * ones(size(T(Mw_3_TB:Mw_3_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on


    
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M28SqrtT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





