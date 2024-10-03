clc; clear; close all;
format short;
%% Parameters
body.m = 0.8;         % Mass (kg)
body.d_cg = 0.32;     % Quadrotor Arm (m)
body.R_rotor = 0.2;   % Rotor Raduis (m)
body.h_rotor = 0.045; % Rotor Heghit Reletive to CG (m)
body.z_cg = 0.19;     % Height CG (m)

body.I.xx = 0.02839;  % Second moment of inertia about X axis (kg.m^2)
body.I.yy = 0.03066;  % Second moment of inertia about Y axis (kg.m^2)
body.I.zz = 0.04390;  % Second moment of inertia about Z axis (kg.m^2)

body.b = 3.13e-5;     % Thrust Factor (kg.m^2/rad^2)
body.d = 3.20e-6;     % Drag Factor (kg.m^2/rad^2)

g = 9.81;             % Earth Gravitational Acceleration Constant (m/s^2)

%% Rotor Rotational Velocities
RRV.R1 = sqrt(body.m*g/4/body.b) ;
RRV.R2 = sqrt(body.m*g/4/body.b);
RRV.R3 = sqrt(body.m*g/4/body.b) ;
RRV.R4 = sqrt(body.m*g/4/body.b);

%% Initial Conditions
chi0.x = 0; % (m)
chi0.y = 0; % (m)
chi0.z = -1;% (m)

lambda0.phi   = 0;  % (rad)
lambda0.theta = 0;  % (rad)
lambda0.psi   = 0;  % (rad)

v0.x = 0; % (m/s)
v0.y = 0; % (m/s)
v0.z = 0; % (m/s)

omega0.p = 0; % (rad/s)
omega0.q = 0; % (rad/s)
omega0.r = 0; % (rad/s)