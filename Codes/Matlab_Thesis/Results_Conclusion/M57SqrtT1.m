clear
clc
close all

% M57SqrtT1 M_Extension_plot

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
M = (Me-Mb) * sqrt((0:Ny-1)/Ny) + Mb;
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
M57Sqrt_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt

%Crgt_1 @B50kyr~E760kyr @M(0.5,0.7)(1,39)
Crgt_1_TB = (50/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (760/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 39;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on

%Mul_1 @B400kyr~590kyr @M(0.6095,0.6483)(13,23)
Mul_1_TB = (400/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (590/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 13;
Mul_1_Me = 23;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B810kyr~1000kyr @M(0.6,0.6549)(11,25)
Mul_2_TB = (810/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (1000/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = 11;
Mul_2_Me = 25;

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on

%Mw_1 @B190kyr~E195kyr @M(0.5,0.6949)(1,39)
Mw_1_TB = (190/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (195/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 39;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%IFJ_1 @B390kyr~E465kyr @M(0.6095,0.6483)(13,23) 
IFJ_1_TB = (390/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (465/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);

IFJ_1_Mb = 13;
IFJ_1_Me = 23;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
    
%IFJ_2 @B760kyr~E820kyr  @M(0.6,0.6549)(11,25)
IFJ_2_TB = (760/20 - 0) / dT + 1;
IFJ_2_TB = round(IFJ_2_TB);

IFJ_2_TE = (820/20 - 0) / dT + 1;
IFJ_2_TE = round(IFJ_2_TE);

IFJ_2_Mb = 11;
IFJ_2_Me = 25;

    errorbar(T(IFJ_2_TB:IFJ_2_TE),...
        0.5 * (M(IFJ_2_Mb) + M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),...
        0.5 * abs(M(IFJ_2_Mb) - M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on

%AF_1 @B340kyr~E400kyr @M(0.5775,0.6414)(7,21)
AF_1_TB = (340/20 - 0) / dT + 1;
AF_1_TB = round(AF_1_TB);

AF_1_TE = (400/20 - 0) / dT + 1;
AF_1_TE = round(AF_1_TE);

AF_1_Mb = 7;
AF_1_Me = 21;

    errorbar(T(AF_1_TB:AF_1_TE),...
        0.5 * (M(AF_1_Mb) + M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),...
        0.5 * abs(M(AF_1_Mb) - M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on

%TF_1 @B920kyr~1000kyr  @M(0.5,0.5894)(1,9)
TF_1_TB = (920/20 - 0) / dT + 1;
TF_1_TB = round(TF_1_TB);

TF_1_TE = (1000/20 - 0) / dT + 1;
TF_1_TE = round(TF_1_TE);

TF_1_Mb = 1;
TF_1_Me = 9;

    errorbar(T(TF_1_TB:TF_1_TE),...
        0.5 * (M(TF_1_Mb) + M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),...
        0.5 * abs(M(TF_1_Mb) - M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on


    
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M57SqrtT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





