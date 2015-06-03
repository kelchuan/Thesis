clear
clc
close all

% M28SinT2 M_Extension_plot

% 1)Initiation
Nx = 50; %number of points in x (time kyr)
Ny = 40; %number of points in y (Z, M value)

Mb = 0.5;
Me = 0.8;

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

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt

%Crgt_1 @B180kyr~E200kyr @M(.5,.6567)(1,15)

Crgt_1_TB = (180/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (200/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 15;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B405kyr~E490kyr @M(.5,.6948)(1,19)
Crgt_2_TB = (405/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (490/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 1;
Crgt_2_Me = 19;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on


%Mw_1 @B490kyr~E495kyr @M(.5,.6948)(1,19)
Mw_1_TB = (490/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (495/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 19;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%FA
%orange = [1,.5,0.3]; %define color for ploting fault alternation
orange = [0,0,0];
%FA_1 @B190kyr~E310kyr
FA_1_TB = (190/20 - 0) / dT + 1;
FA_1_TB = round(FA_1_TB);

FA_1_TE = (310/20 - 0) / dT + 1;
FA_1_TE = round(FA_1_TE);

FA_1_Mb = 1;
FA_1_Me = 39;

    errorbar(T(FA_1_TB:FA_1_TE),...
        0.5 * (M(FA_1_Mb) + M(FA_1_Me)) * ones(size(T(FA_1_TB:FA_1_TE))),...
        0.5 * abs(M(FA_1_Mb) - M(FA_1_Me)) * ones(size(T(FA_1_TB:FA_1_TE))),'bx','MarkerEdgeColor',orange,...
                       'MarkerFaceColor','g','LineWidth',1,'Markersize',18),
    hold on

%FA_2 @B295kyr~E530kyr
FA_2_TB = (295/20 - 0) / dT + 1;
FA_2_TB = round(FA_2_TB);

FA_2_TE = (530/20 - 0) / dT + 1;
FA_2_TE = round(FA_2_TE);

FA_2_Mb = 1;
FA_2_Me = 39;

    errorbar(T(FA_2_TB:FA_2_TE),...
        0.5 * (M(FA_2_Mb) + M(FA_2_Me)) * ones(size(T(FA_2_TB:FA_2_TE))),...
        0.5 * abs(M(FA_2_Mb) - M(FA_2_Me)) * ones(size(T(FA_2_TB:FA_2_TE))),'bo','MarkerEdgeColor',orange,...
                       'LineWidth',1,'Markersize',18),
    hold on

%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M58SinT2','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.5 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





