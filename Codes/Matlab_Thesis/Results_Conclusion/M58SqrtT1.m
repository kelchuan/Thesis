clear
clc
close all

% M58SqrtT1 M_Extension_plot

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
M = (Me-Mb) * sqrt((0:Ny-1)/Ny) + Mb;
%[x,y] = meshgrid(T,M);

% 2)M28LinT1 Data input
%M28Sqrt_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1  @B70kyr~E385kyr @M(0.5,0.8)(1,39)
Crgt_1_TB = (70/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (385/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);

 
Crgt_1_Mb = 1; 
Crgt_1_Me = 39;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B610kyr~E770kyr @M(.6643,.7324)(13,25)
Crgt_2_TB = (610/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (770/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 13;
Crgt_2_Me = 25;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Mul_1 @B450kyr~E760kyr @M(.7121,.7924)(21,39)
Mul_1_TB = (450/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (760/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 21;
Mul_1_Me = 39;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mul_2 @B575kyr~E760kyr @M(.5,.65)(1,11)
Mul_2_TB = (575/20 - 0) / dT + 1;
Mul_2_TB = round(Mul_2_TB);

Mul_2_TE = (760/20 - 0) / dT + 1;
Mul_2_TE = round(Mul_2_TE);

Mul_2_Mb = 1;
Mul_2_Me = 11;

    errorbar(T(Mul_2_TB:Mul_2_TE),...
        0.5 * (M(Mul_2_Mb) + M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),...
        0.5 * abs(M(Mul_2_Mb) - M(Mul_2_Me)) * ones(size(T(Mul_2_TB:Mul_2_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on
%Mw_1 @B820kyr~E830kyr @M(.5,.6643)(1,13)
Mw_1_TB = (820/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (830/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 13;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%IFJ_1  @B390kyr~E460kyr @M(.6643,.7924)(13,39)
IFJ_1_TB = (390/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (460/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);


IFJ_1_Mb = 13; 
IFJ_1_Me = 39;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_2  @B570kyr~E625kyr @M(.5,.65)(1,11)
IFJ_2_TB = (570/20 - 0) / dT + 1;
IFJ_2_TB = round(IFJ_2_TB);

IFJ_2_TE = (625/20 - 0) / dT + 1;
IFJ_2_TE = round(IFJ_2_TE);


IFJ_2_Mb = 1; 
IFJ_2_Me = 11;

    errorbar(T(IFJ_2_TB:IFJ_2_TE),...
        0.5 * (M(IFJ_2_Mb) + M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),...
        0.5 * abs(M(IFJ_2_Mb) - M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_3  @B745kyr~E790 @M(.65,.7225)(11,23)
IFJ_3_TB = (745/20 - 0) / dT + 1;
IFJ_3_TB = round(IFJ_3_TB);

IFJ_3_TE = (790/20 - 0) / dT + 1;
IFJ_3_TE = round(IFJ_3_TE);


IFJ_3_Mb = 11; 
IFJ_3_Me = 23;

    errorbar(T(IFJ_3_TB:IFJ_3_TE),...
        0.5 * (M(IFJ_3_Mb) + M(IFJ_3_Me)) * ones(size(T(IFJ_3_TB:IFJ_3_TE))),...
        0.5 * abs(M(IFJ_3_Mb) - M(IFJ_3_Me)) * ones(size(T(IFJ_3_TB:IFJ_3_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_4  @B760kyr~E830kyr @M(.5,.6162)(1,7)
IFJ_4_TB = (760/20 - 0) / dT + 1;
IFJ_4_TB = round(IFJ_4_TB);

IFJ_4_TE = (830/20 - 0) / dT + 1;
IFJ_4_TE = round(IFJ_4_TE);


IFJ_4_Mb = 1; 
IFJ_4_Me = 7;

    errorbar(T(IFJ_4_TB:IFJ_4_TE),...
        0.5 * (M(IFJ_4_Mb) + M(IFJ_4_Me)) * ones(size(T(IFJ_4_TB:IFJ_4_TE))),...
        0.5 * abs(M(IFJ_4_Mb) - M(IFJ_4_Me)) * ones(size(T(IFJ_4_TB:IFJ_4_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
    
%AF_1 @B390kyr~E510kyr @M(.6775,.7121)(5,21)
AF_1_TB = (390/20 - 0) / dT + 1;
AF_1_TB = round(AF_1_TB);

AF_1_TE = (510/20 - 0) / dT + 1;
AF_1_TE = round(AF_1_TE);

AF_1_Mb = 5;
AF_1_Me = 21;

    errorbar(T(AF_1_TB:AF_1_TE),...
        0.5 * (M(AF_1_Mb) + M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),...
        0.5 * abs(M(AF_1_Mb) - M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_2  @B760kyr~E825kyr @M(.5,.6162)(1,7)
AF_2_TB = (760/20 - 0) / dT + 1;
AF_2_TB = round(AF_2_TB);

AF_2_TE = (825/20 - 0) / dT + 1;
AF_2_TE = round(AF_2_TE);

AF_2_Mb = 1;
AF_2_Me = 7;

    errorbar(T(AF_2_TB:AF_2_TE),...
        0.5 * (M(AF_2_Mb) + M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),...
        0.5 * abs(M(AF_2_Mb) - M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
    
%TF_1 @B325kyr~E520kyr @M(.5,.5949)(1,5)
TF_1_TB = (325/20 - 0) / dT + 1;
TF_1_TB = round(TF_1_TB);

TF_1_TE = (520/20 - 0) / dT + 1;
TF_1_TE = round(TF_1_TE);

TF_1_Mb = 1;
TF_1_Me = 5;

    errorbar(T(TF_1_TB:TF_1_TE),...
        0.5 * (M(TF_1_Mb) + M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),...
        0.5 * abs(M(TF_1_Mb) - M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M58SqrtT1','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.2 0.8])
%legend('Crgt','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





