clear
clc
close all

% M88ContT2 M_Extension_plot

% 1)Initiation
Nx = 50; %number of points in x (time kyr)
Ny = 40; %number of points in y (Z, M value)

Mb = 0;
Me = 20; %km length in along ridge axis segment

Tb = 0;
Te = 1000;

dT = (Te/20 - Tb/20) / Nx;   
% divided by 20, to transfer kyr to km: 5cm/yr = 50m/kyr = 1/20 km/kyr

dM = (Me-Mb)/Ny;
%T = linspace(0,1000,Nx);
%M = linspace(0.2,0.8,Ny);
T = (0 : dT : 1000);
M = linspace(Mb,Me,Ny);
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
%M28Sqrt_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])

%IFJ_1 @B230kyr~E300
IFJ_1_TB = (230/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (300/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);


IFJ_1_Mb = 1; 
IFJ_1_Me = 40;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on

%FA
%orange = [1,.5,0.3]; %define color for ploting fault alternation
orange = [0,0,0];
%FA_1 @B440kyr~E490kyr
FA_1_TB = (440/20 - 0) / dT + 1;
FA_1_TB = round(FA_1_TB);

FA_1_TE = (490/20 - 0) / dT + 1;
FA_1_TE = round(FA_1_TE);

FA_1_Mb = 1;
FA_1_Me = 40;

    errorbar(T(FA_1_TB:FA_1_TE),...
        0.5 * (M(FA_1_Mb) + M(FA_1_Me)) * ones(size(T(FA_1_TB:FA_1_TE))),...
        0.5 * abs(M(FA_1_Mb) - M(FA_1_Me)) * ones(size(T(FA_1_TB:FA_1_TE))),'bx','MarkerEdgeColor',orange,...
                       'MarkerFaceColor','g','LineWidth',1,'Markersize',18),
    hold on

%FA_2 @B640kyr~E700kyr
FA_2_TB = (640/20 - 0) / dT + 1;
FA_2_TB = round(FA_2_TB);

FA_2_TE = (700/20 - 0) / dT + 1;
FA_2_TE = round(FA_2_TE);

FA_2_Mb = 1;
FA_2_Me = 40;

    errorbar(T(FA_2_TB:FA_2_TE),...
        0.5 * (M(FA_2_Mb) + M(FA_2_Me)) * ones(size(T(FA_2_TB:FA_2_TE))),...
        0.5 * abs(M(FA_2_Mb) - M(FA_2_Me)) * ones(size(T(FA_2_TB:FA_2_TE))),'bo','MarkerEdgeColor',orange,...
                       'LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M88ConT2','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('Distance from Z = 0 (km)','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0 20])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





