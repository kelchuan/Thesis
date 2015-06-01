clear
clc
close all

% M57LinT2 M_Extension_plot

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
%M57Lin_T1 = zeros(Ny,Nx);

%FigHandle = figure('Position', [100, 100, 1600, 320]); % set the size of the figure
figure('units','inches','position',[0 0 24 4])
% 2.1)Crgt (black=1)

%Crgt_1 @B150kyr~E200kyr @M(.5,.55)(1,11)

Crgt_1_TB = (150/20 - 0) / dT + 1;
Crgt_1_TB = round(Crgt_1_TB);

Crgt_1_TE = (200/20 - 0) / dT + 1;
Crgt_1_TE = round(Crgt_1_TE);
 
Crgt_1_Mb = 1;
Crgt_1_Me = 11;

    errorbar(T(Crgt_1_TB:Crgt_1_TE),...
        0.5 * (M(Crgt_1_Mb) + M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),...
        0.5 * abs(M(Crgt_1_Mb) - M(Crgt_1_Me)) * ones(size(T(Crgt_1_TB:Crgt_1_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_2 @B200kyr~E270 @M(.5,.69)(1,39)
Crgt_2_TB = (200/20 - 0) / dT + 1;
Crgt_2_TB = round(Crgt_2_TB);

Crgt_2_TE = (270/20 - 0) / dT + 1;
Crgt_2_TE = round(Crgt_2_TE);

Crgt_2_Mb = 1;
Crgt_2_Me = 39;

    errorbar(T(Crgt_2_TB:Crgt_2_TE),...
        0.5 * (M(Crgt_2_Mb) + M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),...
        0.5 * abs(M(Crgt_2_Mb) - M(Crgt_2_Me)) * ones(size(T(Crgt_2_TB:Crgt_2_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on
%Crgt_3 @B415kyr~E1000kyr @M(.5,.69)(1,39)
Crgt_3_TB = (415/20 - 0) / dT + 1;
Crgt_3_TB = round(Crgt_3_TB);

Crgt_3_TE = (1000/20 - 0) / dT + 1;
Crgt_3_TE = round(Crgt_3_TE);

Crgt_3_Mb = 1;
Crgt_3_Me = 39;

    errorbar(T(Crgt_3_TB:Crgt_3_TE),...
        0.5 * (M(Crgt_3_Mb) + M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),...
        0.5 * abs(M(Crgt_3_Mb) - M(Crgt_3_Me)) * ones(size(T(Crgt_3_TB:Crgt_3_TE))),'r.','LineWidth',2,'Markersize',18),
    hold on   

% 2.3)IFJ
%IFJ_1 @B290kyr~E380kyr @M(.58,.69)(17,39)
IFJ_1_TB = (290/20 - 0) / dT + 1;
IFJ_1_TB = round(IFJ_1_TB);

IFJ_1_TE = (380/20 - 0) / dT + 1;
IFJ_1_TE = round(IFJ_1_TE);

IFJ_1_Mb = 17;
IFJ_1_Me = 39;

    errorbar(T(IFJ_1_TB:IFJ_1_TE),...
        0.5 * (M(IFJ_1_Mb) + M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),...
        0.5 * abs(M(IFJ_1_Mb) - M(IFJ_1_Me)) * ones(size(T(IFJ_1_TB:IFJ_1_TE))),'k<','LineWidth',2,'Markersize',18),
    hold on
    
%Mw_1  @B250kyr~E270kyr @M(.5,.69)(1,39)
Mw_1_TB = (250/20 - 0) / dT + 1;
Mw_1_TB = round(Mw_1_TB);

Mw_1_TE = (270/20 - 0) / dT + 1;
Mw_1_TE = round(Mw_1_TE);

Mw_1_Mb = 1;
Mw_1_Me = 39;

    errorbar(T(Mw_1_TB:Mw_1_TE),...
        0.5 * (M(Mw_1_Mb) + M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),...
        0.5 * abs(M(Mw_1_Mb) - M(Mw_1_Me)) * ones(size(T(Mw_1_TB:Mw_1_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
%Mw_2  @B450kyr~E490kyr @M(.5,.69)(1,39)
Mw_2_TB = (450/20 - 0) / dT + 1;
Mw_2_TB = round(Mw_2_TB);

Mw_2_TE = (490/20 - 0) / dT + 1;
Mw_2_TE = round(Mw_2_TE);

Mw_2_Mb = 1;
Mw_2_Me = 39;

    errorbar(T(Mw_2_TB:Mw_2_TE),...
        0.5 * (M(Mw_2_Mb) + M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),...
        0.5 * abs(M(Mw_2_Mb) - M(Mw_2_Me)) * ones(size(T(Mw_2_TB:Mw_2_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
%Mw_3  @B565kyr~E600kyr @M(.5,.58)(1,17)
Mw_3_TB = (565/20 - 0) / dT + 1;
Mw_3_TB = round(Mw_3_TB);

Mw_3_TE = (600/20 - 0) / dT + 1;
Mw_3_TE = round(Mw_3_TE);

Mw_3_Mb = 1;
Mw_3_Me = 17;

    errorbar(T(Mw_3_TB:Mw_3_TE),...
        0.5 * (M(Mw_3_Mb) + M(Mw_3_Me)) * ones(size(T(Mw_3_TB:Mw_3_TE))),...
        0.5 * abs(M(Mw_3_Mb) - M(Mw_3_Me)) * ones(size(T(Mw_3_TB:Mw_3_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on
%Mw_4   @B810kyr~845kyr @M(.5,.61)(1,23)
Mw_4_TB = (810/20 - 0) / dT + 1;
Mw_4_TB = round(Mw_4_TB);

Mw_4_TE = (845/20 - 0) / dT + 1;
Mw_4_TE = round(Mw_4_TE);

Mw_4_Mb = 1;
Mw_4_Me = 23;

    errorbar(T(Mw_4_TB:Mw_4_TE),...
        0.5 * (M(Mw_4_Mb) + M(Mw_4_Me)) * ones(size(T(Mw_4_TB:Mw_4_TE))),...
        0.5 * abs(M(Mw_4_Mb) - M(Mw_4_Me)) * ones(size(T(Mw_4_TB:Mw_4_TE))),'mv','LineWidth',2,'Markersize',18),
    hold on


%TF_1 @B270kyr~E1000kyr @M(.5,.54)(1,9)
TF_1_TB = (270/20 - 0) / dT + 1;
TF_1_TB = round(TF_1_TB);

TF_1_TE = (1000/20 - 0) / dT + 1;
TF_1_TE = round(TF_1_TE);

TF_1_Mb = 1;
TF_1_Me = 9;

    errorbar(T(TF_1_TB:TF_1_TE),...
        0.5 * (M(TF_1_Mb) + M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),...
        0.5 * abs(M(TF_1_Mb) - M(TF_1_Me)) * ones(size(T(TF_1_TB:TF_1_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on
%TF_2 @B490kyr~E1000kyr @M(.5,.69)(1,39) 
TF_2_TB = (490/20 - 0) / dT + 1;
TF_2_TB = round(TF_2_TB);

TF_2_TE = (1000/20 - 0) / dT + 1;
TF_2_TE = round(TF_2_TE);

TF_2_Mb = 1;
TF_2_Me = 39;

    errorbar(T(TF_2_TB:TF_2_TE),...
        0.5 * (M(TF_2_Mb) + M(TF_2_Me)) * ones(size(T(TF_2_TB:TF_2_TE))),...
        0.5 * abs(M(TF_2_Mb) - M(TF_2_Me)) * ones(size(T(TF_2_TB:TF_2_TE))),'gd','LineWidth',1,'Markersize',18),
    hold on
    
%AF_1 @B490kyr~E1000kyr @M(.5,.69)(1,39) 
AF_1_TB = (490/20 - 0) / dT + 1;
AF_1_TB = round(AF_1_TB);

AF_1_TE = (1000/20 - 0) / dT + 1;
AF_1_TE = round(AF_1_TE);

AF_1_Mb = 1;
AF_1_Me = 39;

    errorbar(T(AF_1_TB:AF_1_TE),...
        0.5 * (M(AF_1_Mb) + M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),...
        0.5 * abs(M(AF_1_Mb) - M(AF_1_Me)) * ones(size(T(AF_1_TB:AF_1_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_2 @B490kyr~E1000kyr @M(.5,.69)(1,39) 
AF_2_TB = (490/20 - 0) / dT + 1;
AF_2_TB = round(AF_2_TB);

AF_2_TE = (1000/20 - 0) / dT + 1;
AF_2_TE = round(AF_2_TE);

AF_2_Mb = 1;
AF_2_Me = 39;

    errorbar(T(AF_2_TB:AF_2_TE),...
        0.5 * (M(AF_2_Mb) + M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),...
        0.5 * abs(M(AF_2_Mb) - M(AF_2_Me)) * ones(size(T(AF_2_TB:AF_2_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%AF_3 @B490kyr~E1000kyr @M(.5,.69)(1,39) 
AF_3_TB = (490/20 - 0) / dT + 1;
AF_3_TB = round(AF_3_TB);

AF_3_TE = (1000/20 - 0) / dT + 1;
AF_3_TE = round(AF_3_TE);

AF_3_Mb = 1;
AF_3_Me = 39;

    errorbar(T(AF_3_TB:AF_3_TE),...
        0.5 * (M(AF_3_Mb) + M(AF_3_Me)) * ones(size(T(AF_3_TB:AF_3_TE))),...
        0.5 * abs(M(AF_3_Mb) - M(AF_3_Me)) * ones(size(T(AF_3_TB:AF_3_TE))),'c*','LineWidth',1,'Markersize',18),
    hold on
%Ploting


set(gca,'YDir','normal') % for reversing Y-axis from low to high value 
title('M57LinT2','FontSize',24,'FontWeight','bold','Color','k')
xlabel('Extension (km)','FontSize',24,'FontWeight','bold','Color','k')
ylabel('M','FontSize',24,'FontWeight','bold','Color','k')
set(gca,'FontSize',24,'FontWeight','bold') % set the font size of the ticks of the axes
axis([0 50 0.5 0.7])
%legend('Crgt_1','Crgt_2','Crgt_3','Mul','IFJ','Location','northeastoutside','FontWeight','bold')





