%this is for calculating shear and failure under different 
%Cohesion friction angle and weakening parameters

%initialization
sigma_yy = -4.5 * 10^7; %(Pa)
sigma_xx = 0.2 * 10^7; %(Pa)

fric_ang1 = 40;
fric_ang2 = 20;
fric_ang3 = 20;

Cohesion1 = 4.5 * 10^7; %(Pa)
Cohesion2 = 0.5 * 10^7;
Cohesion3 = 0.5 * 10^7;

plstrain1 = 0;
plstrain2 = 0.3;
plstrain3 = 1000;

plstrain = linspace(0,2,1000);



%piecewise weakening
if(plstrain<=0.3)
    pl_ratio = plstrain / (plstrain2 - plstrain1);
    fric_ang = fric_ang1 - (fric_ang1 - fric_ang2) * pl_ratio;
    Cohesion = Cohesion1 - (Cohesion1 - Cohesion2) * pl_ratio;
   
else
    fric_ang = plstrain3;
    Cohesion = Cohesion3;
end
    
ten_off = Cohesion / tand(fric_ang)

Nphi = (1 + sind(fric_ang))/(1 - sind(fric_ang));


%shear function fs
fs = sigma_yy - Nphi * sigma_xx + 2 * Cohesion * sqrt(Nphi)
%tensile failure ft
ft = sigma_xx - ten_off

%tensile function h
kk = ( sqrt(Nphi^2 + 1) +Nphi ) * (sigma_yy - Nphi * ten_off + 2 * Cohesion * sqrt(Nphi))
h = sigma_xx - ten_off + kk


plot(plstrain, h)