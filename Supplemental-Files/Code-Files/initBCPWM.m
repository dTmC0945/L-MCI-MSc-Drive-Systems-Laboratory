%{ 
***************************************************************************
*    Initialisation script for use in Block Commutation Simulation of a   *
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
% Selection of switching commutation strategy 120/180
% Set 1 = 120 degree commutation
% Set 0 = 180 degree commutation
BLDC_120_180   = 1; 

% Duty cycle: 
% set the PWM duty cycle to control the output voltage/current
duty_cycle     = 0.6; 

% Fundamental frequency: 
% set the electrical frequency corresponding to measurements
f_fundamental  = 265;           % Electrical frequency          (Hz)
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

% Based on the Commutation method choose a load angle
if BLDC_120_180 == 1
    load_angle=pi/3;        % for 120 
else
    load_angle = pi/6;      % for 180
end 

% END OF CODE -------------------------------------------------------------