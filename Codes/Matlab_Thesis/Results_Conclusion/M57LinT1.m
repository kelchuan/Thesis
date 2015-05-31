clear
clc
close all

% M57LinT1 M_Extension_plot

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
M = (Mb : dM : Me);
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
M57Lin_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B65kyr~E160kyr @M(0.5,0.69)(1,39)

Crgt_1_TB = (65/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (160/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

Crgt_1_Mb = (0.5 - Mb) / dM + 1; 
Crgt_1_Mb = round(Crgt_1_Mb);

Crgt_1_Me = (0.69 - Mb) / dM + 1; 
Crgt_1_Me = round(Crgt_1_Me);

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B162.5~E600kyr @M(0.5,0.69)(1,39)
Crgt_2_TB = (162.5/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (600/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = (0.5 - Mb) / dM + 1; 
Crgt_2_Mb = round(Crgt_2_Mb);

Crgt_2_Me = (0.69 - Mb) / dM + 1; 
Crgt_2_Me = round(Crgt_2_Me);

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
   
% 2.2)Mul
%Mul_1 @B500kyr~E700kyr @M(0.66,0.69)(33,39)
Mul_1_TB = (500/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (700/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = (0.66 - Mb) / dM + 1; 
Mul_1_Mb = round(Mul_1_Mb);

Mul_1_Me = (0.69 - Mb) / dM + 1; 
Mul_1_Me = round(Mul_1_Me);

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B740~E1000kyr @M(0.56,0.69)(33,39)
Mul_2_TB = (740/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (1000/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = (0.56 - Mb) / dM + 1; 
Mul_2_Mb = round(Mul_2_Mb);

Mul_2_Me = (0.69 - Mb) / dM + 1; 
Mul_2_Me = round(Mul_2_Me);

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
% 2.3)IFJ
%IFJ_1 @B680~E740 @M(0.56,0.69)(13,39)
IFJ_1_TB = (680/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (740/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);

IFJ_1_Mb = (0.56 - Mb) / dM + 1; 
IFJ_1_Mb = round(IFJ_1_Mb);

IFJ_1_Me = (0.69 - Mb) / dM + 1; 
IFJ_1_Me = round(IFJ_1_Me);

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
    
%Mw_1 @B160kyr~E162.5kyr  @M(0.5,0.69)(1,39)
Mw_1_TB = (160/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (162.5/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = (0.5 - Mb) / dM + 1; 
Mw_1_Mb = round(Mw_1_Mb);

Mw_1_Me = (0.69 - Mb) / dM + 1; 
Mw_1_Me = round(Mw_1_Me);

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%TF_1 @B260kyr~E600kyr  @M(0.5,0.69)(1,39)
TF_1_TB = (260/20 - 0) / dT + 1;
TF_1_TB = round(TF_1_TB);

TF_1_TE = (600/20 - 0) / dT + 1;
TF_1_TE = round(TF_1_TE);

TF_1_Mb = 1;
TF_1_Me = 39;

    errorbar(T(TF_1_TB:TF_1_TE),...
        0.5 * (M(TF_1_Mb) + M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),...
        0.5 * abs(M(TF_1_Mb) - M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on
%TF_2 @B680kyr~E1k @M(0.5,0.56)(1,13)
TF_2_TB = (680/20 - 0) / dT + 1;
TF_2_TB = round(TF_2_TB);

TF_2_TE = (1000/20 - 0) / dT + 1;
TF_2_TE = round(TF_2_TE);

TF_2_Mb = 1;
TF_2_Me = 13;

    errorbar(T(TF_2_TB:TF_2_TE),...
        0.5 * (M(TF_2_Mb) + M(TF_2_Me)) * ones(size(T(TF_2_TB:TF_2_TE))),...
        0.5 * abs(M(TF_2_Mb) - M(TF_2_Me)) * ones(size(T(TF_2_TB:TF_2_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M57LinT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt_1','Crgt_2','Crgt_3','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





