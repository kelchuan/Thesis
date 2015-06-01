clear
clc
close all

% M58LinT2 M_Extension_plot

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
M = (Mb : dM : Me);
%[x,y] = meshgrid(T,M);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B160kyr~E260kyr @M(.5,.545)(1,7)

Crgt_1_TB = (160/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (260/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);
 
Crgt_1_Mb = 1;
Crgt_1_Me = 7;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B200kyr~E260kyr @M(0.545,.635)(7,19)
Crgt_2_TB = (200/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (260/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 7;
Crgt_2_Me = 19;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on   
%Crgt_3 @B280kyr~E820kyr @M(.5,.575)(1,11) 
Crgt_3_TB = (280/20 - 0) / dT + 1;
Crgt_3_TB = round(Crgt_3_TB);

Crgt_3_TE = (820/20 - 0) / dT + 1;
Crgt_3_TE = round(Crgt_3_TE);

Crgt_3_Mb = 1;
Crgt_3_Me = 11;

    errorbar(T(Crgt_3_TB:Crgt_3_TE),...
        0.5 * (M(Crgt_3_Mb) + M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),...
        0.5 * abs(M(Crgt_3_Mb) - M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on   
%Crgt_4 @B820kyr~E1000kyr @M(.5,.8)(1,39)
Crgt_4_TB = (820/20 - 0) / dT + 1;
Crgt_4_TB = round(Crgt_4_TB);

Crgt_4_TE = (1000/20 - 0) / dT + 1;
Crgt_4_TE = round(Crgt_4_TE);

Crgt_4_Mb = 1;
Crgt_4_Me = 39;

    errorbar(T(Crgt_4_TB:Crgt_4_TE),...
        0.5 * (M(Crgt_4_Mb) + M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),...
        0.5 * abs(M(Crgt_4_Mb) - M(Crgt_4_Me)) * ones(size(T(Crgt_4_TB:Crgt_4_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on       
% 2.2)Mul 
%Mul_1 @B410kyr~E900kyr @M(0.710,.785)(29,39)
Mul_1_TB = (410/20 - 0) / dT + 1;
Mul_1_TB = round(Mul_1_TB);

Mul_1_TE = (900/20 - 0) / dT + 1;
Mul_1_TE = round(Mul_1_TE);

Mul_1_Mb = 29;
Mul_1_Me = 39;

    errorbar(T(Mul_1_TB:Mul_1_TE),...
        0.5 * (M(Mul_1_Mb) + M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),...
        0.5 * abs(M(Mul_1_Mb) - M(Mul_1_Me)) * ones(size(T(Mul_1_TB:Mul_1_TE))),'bs','LineWidth',2,'Markersize',18),
    hold on

% 2.3)IFJ
%IFJ_1 @B275kyr~E350kyr @M(0.620,.785)(17,39)
IFJ_1_TB = (275/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (350/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);

IFJ_1_Mb = 17;
IFJ_1_Me = 39;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
%IFJ_2 @B860kyr~E1000kyr @M(.59,.785)(13,39)
IFJ_2_TB = (860/20 - 0) / dT + 1;
IFJ_2_TB = round(IFJ_2_TB);

IFJ_2_TE = (1000/20 - 0) / dT + 1;
IFJ_2_TE = round(IFJ_2_TE);

IFJ_2_Mb = 13;
IFJ_2_Me = 39;

    errorbar(T(IFJ_2_TB:IFJ_2_TE),...
        0.5 * (M(IFJ_2_Mb) + M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),...
        0.5 * abs(M(IFJ_2_Mb) - M(IFJ_2_Me)) * ones(size(T(IFJ_2_TB:IFJ_2_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on   
    
%Mw_1  @B260kyr~E265kyr @M(.5,.785)(1,39)
Mw_1_TB = (260/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (265/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 39;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on

%TF_1 @B170kyr~E1000kyr  M(.5,.545)(1,7) 
TF_1_TB = (170/20 - 0) / dT + 1;
TF_1_TB = round(TF_1_TB);

TF_1_TE = (1000/20 - 0) / dT + 1;
TF_1_TE = round(TF_1_TE);

TF_1_Mb = 1;
TF_1_Me = 7;

    errorbar(T(TF_1_TB:TF_1_TE),...
        0.5 * (M(TF_1_Mb) + M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),...
        0.5 * abs(M(TF_1_Mb) - M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on

%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M58LinT2','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.5 0.8])
%legend('Crgt_1','Crgt_2','Crgt_3','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





