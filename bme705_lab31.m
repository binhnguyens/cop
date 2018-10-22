%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BME705: Rehabilitation Engineering
% Lab 3: Center of Pressure (COP)
%
% Created by: Matija Milosevic, 2011
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name: Binh Nguyen 
% Student ID: 500 689 270


%%

clear all
close all
load('ECEO_data1.mat');
fs=2000;

% analyzeFP function: "Given" (do not edit): converst raw forceplate data
% INPUT = 16 channels of raw forceplate data;
% OUTPUT: xCOPL, yCOPL, xCOPR, yCOPR, Rv_R, Rv_L
% Note: Rv_R and Rv_L are vertical forces of right and left forceplate 
% Repeat for esEO_fp
[xCOPL, yCOPL, xCOPR, yCOPR, Rv_R, Rv_L] = analyzeFP2(qsEO_fp);

% xCOPL and yCOPL represents the centre of pressure for left foot

% Rv_R vertical force of right leg

% Rv_L vertical force of left leg

%%% Calcualte the COPnet
% 1st: Define the global center of pressure coodinate & use these to compute COPnet
% Shift X-coordinates to the middle of the split force plate by +/- 12.5825cm
xCOPLnew = xCOPL - 12.5825;
xCOPRnew = xCOPR + 12.5825;

% Calculate COP for overall system using Winter et al., 2003 [1]: 
% Equation 1 (same Equation A in the lab manual).

for i = 1 : numel (xCOPLnew)

xCOP (i) = xCOPLnew (i)*(Rv_L(i)/(Rv_R(i)+Rv_L(i)))+ xCOPRnew(i)*(Rv_R(i)/(Rv_R(i)+Rv_L(i)));
yCOP (i) = yCOPL (i)*(Rv_L(i)/(Rv_R(i)+Rv_L(i)))+ yCOPR(i)*(Rv_R(i)/(Rv_R(i)+Rv_L(i)));

end



%%% Filter all data
% Low-pass filter: Butterworth, fc=10Hz
fc=10;








%%% Plot filtered Left COP vs. Right COP & Global COP








%%% Using Prieto el al., 1994 paper [2]

% Select 20 seconds of the data in the time frame from 40-60 seconds
T=20;



% Downsample to 100 Hz
fs_new = 100;
AP20d =
ML20d =

% Zero-mean AP, ML and RD: Equations 1, 2, 3 (Prieto el al., 1994)
AP = 
ML = 
RD =

% Mean distance: Equations 4 and 5 (Prieto el al., 1994)
MDIST = 
MDISTap = 
MDISTml = 

% RMS distance: Equations 6 and 7 (Prieto el al., 1994)
RDIST = 
RDISTap = 
RDISTml = 

% Total Excursion: Equations 8 and 9 (Prieto el al., 1994)
TOTEX = 
TOTEXap = 
TOTEXml = 

% Mean velocity: Equations 10 and 11 (Prieto el al., 1994)
MVELO = 
MVELOap = 
MVELOml = 

% 95% confidence circle AREA-CC: Equations 12 and 13 (Prieto el al., 1994)
z05 = 1.645;  % constant for z-statistic at 95% confidence level
srd = 
AREACC = 
