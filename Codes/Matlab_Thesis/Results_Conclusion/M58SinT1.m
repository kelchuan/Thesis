clear
clc
close all

% M28SinT1 M_Extension_plot

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

%Crgt_1 @B80kyr~E350kyr @M(0.5,0.7991)(1,39)

Crgt_1_TB = (80/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (350/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 39;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B460kyr~E550kyr  @M(.6148,.7281)(11,23)
Crgt_2_TB = (460/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (550/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 11;
Crgt_2_Me = 23;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on

% 2.2)Mul 
%Mul_1 @B435kyr~E635kyr @M(.6948,.7673)(19,29)
Mul_1_TB = (435/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (635/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 19;
Mul_1_Me = 29;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B550kyr~915kyr @M(.7772,.7991)(31,39)
Mul_2_TB = (550/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (915/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = 31;
Mul_2_Me = 39;

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
% 2.3)IFJ
%IFJ_1  @B350kyr~E410kyr @M(0.57,0.7281)(7,23) 
IFJ_1_TB = (350/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (410/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);


IFJ_1_Mb = 7; 
IFJ_1_Me = 23;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_2  @B550kyr~E590kyr @M(.7772,.7991)(31,39)
IFJ_2_TB = (550/20 - 0) / dT + 1;
IFJ_2_TB = round(IFJ_2_TB);

IFJ_2_TE = (590/20 - 0) / dT + 1;
IFJ_2_TE = round(IFJ_2_TE);


IFJ_2_Mb = 31; 
IFJ_2_Me = 39;

    errorbar(T(IFJ_2_TB:IFJ_2_TE),...
        0.5 * (M(IFJ_2_Mb) + M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),...
        0.5 * abs(M(IFJ_2_Mb) - M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_3  @B945kyr~E1000kyr @M(.7427.7991)(25,39) 
IFJ_3_TB = (945/20 - 0) / dT + 1;
IFJ_3_TB = round(IFJ_3_TB);

IFJ_3_TE = (1000/20 - 0) / dT + 1;
IFJ_3_TE = round(IFJ_3_TE);


IFJ_3_Mb = 25; 
IFJ_3_Me = 39;

    errorbar(T(IFJ_3_TB:IFJ_3_TE),...
        0.5 * (M(IFJ_3_Mb) + M(IFJ_3_Me)) * ones(size(T(IFJ_3_TB:IFJ_3_TE))),...
        0.5 * abs(M(IFJ_3_Mb) - M(IFJ_3_Me)) * ones(size(T(IFJ_3_TB:IFJ_3_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
    
%Mw_1 @B240kyr~E300kyr @M(0.5,0.7991)(1,39)
Mw_1_TB = (240/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (300/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 39;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%Mw_2 @B540kyr~575kyr @M(.5,.7558)(1,27)
Mw_2_TB = (540/20 - 0) / dT + 1;
Mw_2_TB = round(Mw_2_TB);

Mw_2_TE = (575/20 - 0) / dT + 1;
Mw_2_TE = round(Mw_2_TE);

Mw_2_Mb = 1;
Mw_2_Me = 27;

    errorbar(T(Mw_2_TB:Mw_2_TE),...
        0.5 * (M(Mw_2_Mb) + M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),...
        0.5 * abs(M(Mw_2_Mb) - M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
    
%AF_1 @B330kyr~E670kyr @M(0.5,0.5469),(1,5)
AF_1_TB = (330/20 - 0) / dT + 1;
AF_1_TB = round(AF_1_TB);

AF_1_TE = (670/20 - 0) / dT + 1;
AF_1_TE = round(AF_1_TE);

AF_1_Mb = 1;
AF_1_Me = 5;

    errorbar(T(AF_1_TB:AF_1_TE),...
        0.5 * (M(AF_1_Mb) + M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),...
        0.5 * abs(M(AF_1_Mb) - M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_2 @B635~E820kyr @M(.5927,.6362)(9,13)
AF_2_TB = (635/20 - 0) / dT + 1;
AF_2_TB = round(AF_2_TB);

AF_2_TE = (820/20 - 0) / dT + 1;
AF_2_TE = round(AF_2_TE);

AF_2_Mb = 9;
AF_2_Me = 13;

    errorbar(T(AF_2_TB:AF_2_TE),...
        0.5 * (M(AF_2_Mb) + M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),...
        0.5 * abs(M(AF_2_Mb) - M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M58SinT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





