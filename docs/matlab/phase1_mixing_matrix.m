clear;clc;close all;
%%
syms L d T1 T2 k_T k_Q omega_0 delta_1 delta_2

r1 = [L;-d/2;0];
r2 = [L;d/2;0];

F1 = [0;0;T1];
F2 = [0;0;T2];

tau_1 = cross(r1,F1);
tau_2 = cross(r2,F2);
%%
omega_1 = omega_0 + delta_1;
omega_2 = omega_0  + delta_2;

tau_pitch = k_T*L*(omega_1^2+omega_2^2);
tau_yaw = k_Q*(omega_1^2-omega_2^2);

delta = [delta_1; delta_2];
tau   = [tau_pitch; tau_yaw];

M = simplify(subs(jacobian(tau, delta), [delta_1 delta_2], [0 0]));
isInvertible = (rank(M) == size(M,1));