close all
clear
clc
%% Parameters
load('Initial_WorkSpace.mat')
body.m = 0.8;                                           % Mass (kg)
body.d_cg = 0.32;                                       % Quadrotor Arm (m)
body.R_rotor = 0.2;                                     % Rotor Raduis (m)
body.h_rotor = 0.045;                                   % Rotor Heghit Reletive to CG (m)
body.z_cg = 0.19;                                       % Height CG (m)

body.b = 3.13e-5;                                       % Thrust Factor (kg.m^2/rad^2)
body.d = 3.20e-6;                                       % Drag Factor (kg.m^2/rad^2)

body.I.xx = 0.02839;                                    % Second moment of inertia about X axis (kg.m^2)
body.I.yy = 0.03066;                                    % Second moment of inertia about Y axis (kg.m^2)
body.I.zz = 0.04390;                                    % Second moment of inertia about Z axis (kg.m^2)

g = 9.81;                                               % Earth Gravitational Acceleration Constant (m/s^2)

wh = sqrt(body.m*g/4/body.b);                           % Rotor Rotational Velocity in Hover (rad/s)

%% Transfer Function
% Linear Dynamics Model
s = tf('s');
G.z = -2*body.b*wh/body.m/s^2;                          % C.z = C.z1 = C.z2 = C.z3 = C.z4
[num.Gz, den.Gz] = tfdata(G.z);
G.phi = 2*body.b*body.d_cg*wh/body.I.xx/s^2;            % C.phi = C.phi2 = -C.phi4
[num.Gphi, den.Gphi] = tfdata(G.phi);
G.theta = 2*body.b*body.d_cg*wh/body.I.yy/s^2;          % C.theta = C.theta1 = -C.theta3
[num.Gtheta, den.Gtheta] = tfdata(G.theta);
G.psi = 2*body.d*wh/body.I.zz/s^2;                      % C.psi = C.psi1 = C.psi3 = -C.psi2 = -C.psi4
[num.Gpsi, den.Gpsi] = tfdata(G.psi);

% Linear Model Controller
[num.Gc_z, den.Gc_z] = tfdata(tf(Gc_z));
[num.Gc_phi, den.Gc_phi] = tfdata(tf(Gc_phi));
[num.Gc_theta, den.Gc_theta] = tfdata(tf(Gc_theta));
[num.Gc_psi, den.Gc_psi] = tfdata(tf(Gc_psi));

%% Initial Conditions
chi0.x = 0;                                             % (m)
chi0.y = 0;                                             % (m)
chi0.z = -1;                                            % (m)

lambda0.phi   = 0;                                      % (rad)
lambda0.theta = 0;                                      % (rad)
lambda0.psi   = 0;                                      % (rad)

v0.x = 0;                                               % (m/s)
v0.y = 0;                                               % (m/s)
v0.z = 0;                                               % (m/s)

omega0.p = 0;                                           % (rad/s)
omega0.q = 0;                                           % (rad/s)
omega0.r = 0;                                           % (rad/s)
