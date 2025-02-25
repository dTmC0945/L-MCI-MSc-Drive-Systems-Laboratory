%{ 
***************************************************************************
*    Initialisation script for use in Space Vector modulation of a        *
*    Brushless DC Motor using SIMULINK. Please run this script PRIOR to   *
*    running the SIMULINK model.                                          *
*                                                                         *
*    (2025)                                                               *
***************************************************************************
%}

% CLEANING OUT THE HOUSE --------------------------------------------------
% Clear the workspace from all previous statements/values
clc;
clear;
close all;

% VARIABLES ---------------------------------------------------------------

% Setup for FOC
% Set 1 = FOC
% Set 0 = Free Angle
FOC = 1;   

Isetpoint = 5;                  % used if FOC = 1
Vsetpoint = 5;                  % used if FOC = 0

% Fundamental frequency: 
% set the electrical frequency corresponding to measurements
f_fundamental  = 100;           % Electrical frequency          (Hz)
f_pwm          = 20000;         % Sampling/Switching frequency  (Hz)

% Solver step size
sover_max_step = 1e-6;          % Solver step size

Vdc            = 24;            % DC-link voltage               (V)

% MOSFET PARAMETERS -------------------------------------------------------

Ron            = 5e-3;          % MOSFET On-Resistance          (Ohm)
Rd             = 70e-3;         % Revese Diode Resistance       (Ohm)
Vf             = 0.87;          % Reverse Diode forward Voltage (V)

% MOTOR PARAMETERs --------------------------------------------------------
%
% NOTE: Calculated for BLY172S-24V-4000, delta configuration.

p              = 4;             % Pole pairs                    (-)
Rs             = 3/2 * 0.8;     % Serial resistance (Delta)     (Ohm)
Ls             = 3/2 * 1.2e-3;  % Serial inductance (Delta)     (H)

% Back EMF Constant (rad.V/s)
Ke             = sqrt(2) * 3.35e-3 * 60 / 2 / pi / p;     

load_angle_offset = 120/180*pi;

% Additional calculations for FOC
if FOC == 1 
    Iref           = Isetpoint;
    E              = Ke * 2 * pi * f_fundamental / sqrt(3);
    Vd             = E + 1/3 * Rs * Iref;
    Vq             = 2 * pi * f_fundamental * Ls * 1/3 * Iref;
    V_uvw          = sqrt(Vd^2 + Vq^2);
    voltage_angle  = atan2(Vq,Vd);
else
    V_uvw = Vsetpoint;
end
    
%voltage_angle = 0;

load_angle = load_angle_offset - voltage_angle;

% END OF CODE -------------------------------------------------------------