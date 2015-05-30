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
M28Sin_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B160kyr~E250kyr @M(0.2,0.4296)

Crgt_1_TB = (60/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (250/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 11;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B250kyr~E260kyr  @M(0.2,0.5897)
Crgt_2_TB = (250/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (260/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 1;
Crgt_2_Me = 19;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_3 @B260kyr~E330kyr  @M(0.2,0.6562)
Crgt_3_TB = (260/20 - 0) / dT + 1;
Crgt_3_TB = round(Crgt_3_TB);

Crgt_3_TE = (330/20 - 0) / dT + 1;
Crgt_3_TE = round(Crgt_3_TE);

Crgt_3_Mb = 1;
Crgt_3_Me = 23;

    errorbar(T(Crgt_3_TB:Crgt_3_TE),...
        0.5 * (M(Crgt_3_Mb) + M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),...
        0.5 * abs(M(Crgt_3_Mb) - M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_4 @B350kyr~E450kyr  @M(0.2,0.4724)
Crgt_4_TB = (350/20 - 0) / dT + 1;
Crgt_4_TB = round(Crgt_4_TB);

Crgt_4_TE = (450/20 - 0) / dT + 1;
Crgt_4_TE = round(Crgt_4_TE);
 
Crgt_4_Mb = 1;
Crgt_4_Me = 13;

    errorbar(T(Crgt_4_TB:Crgt_4_TE),...
        0.5 * (M(Crgt_4_Mb) + M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),...
        0.5 * abs(M(Crgt_4_Mb) - M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_5 @B450kyr~E575kyr  @M(0.2,0.3854)
Crgt_5_TB = (450/20 - 0) / dT + 1;
Crgt_5_TB = round(Crgt_5_TB);

Crgt_5_TE = (575/20 - 0) / dT + 1;
Crgt_5_TE = round(Crgt_5_TE);

Crgt_5_Mb = 1;
Crgt_5_Me = 9;

    errorbar(T(Crgt_5_TB:Crgt_5_TE),...
        0.5 * (M(Crgt_5_Mb) + M(Crgt_5_Me)) * ones(size(T(Crgt_5_TB:Crgt_5_TE))),...
        0.5 * abs(M(Crgt_5_Mb) - M(Crgt_5_Me)) * ones(size(T(Crgt_5_TB:Crgt_5_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_6 @B705kyr~E800kyr  @M(0.2,0.3854)
Crgt_6_TB = (705/20 - 0) / dT + 1;
Crgt_6_TB = round(Crgt_6_TB);

Crgt_6_TE = (800/20 - 0) / dT + 1;
Crgt_6_TE = round(Crgt_6_TE);

Crgt_6_Mb = 1;
Crgt_6_Me = 9;

    errorbar(T(Crgt_6_TB:Crgt_6_TE),...
        0.5 * (M(Crgt_6_Mb) + M(Crgt_6_Me)) * ones(size(T(Crgt_6_TB:Crgt_6_TE))),...
        0.5 * abs(M(Crgt_6_Mb) - M(Crgt_6_Me)) * ones(size(T(Crgt_6_TB:Crgt_6_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_7 @B750kyr~E800kyr @M(0.6243,0.8)
Crgt_7_TB = (750/20 - 0) / dT + 1;
Crgt_7_TB = round(Crgt_7_TB);

Crgt_7_TE = (800/20 - 0) / dT + 1;
Crgt_7_TE = round(Crgt_7_TE);

Crgt_7_Mb = 21;
Crgt_7_Me = 40;

    errorbar(T(Crgt_7_TB:Crgt_7_TE),...
        0.5 * (M(Crgt_7_Mb) + M(Crgt_7_Me)) * ones(size(T(Crgt_7_TB:Crgt_7_TE))),...
        0.5 * abs(M(Crgt_7_Mb) - M(Crgt_7_Me)) * ones(size(T(Crgt_7_TB:Crgt_7_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
% 2.2)Mul 
%Mul_1 @B250kyr~E550kyr @M(0.6562,0.8)
Mul_1_TB = (250/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (550/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 23;
Mul_1_Me = 40;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B560kyr~E800kyr  @M(0.5135,0.8)
Mul_2_TB = (560/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (800/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = 15;
Mul_2_Me = 40;

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
% 2.3)IFJ (=3)
%IFJ_1 @B450kyr~E560kyr @M(0.5135,0.8)
IFJ_1_TB = (450/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (560/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);


IFJ_1_Mb = 15; 
IFJ_1_Me = 40;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M28SinT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





