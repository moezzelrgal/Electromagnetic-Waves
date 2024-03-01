%%  parameters
f = 1e9; 
omega = 2 * pi * f; 
epsilon_r = 4; 
sigma = 0.01; 
mu_r = 1;  
phi = 0; 

%% Constants
mu_0 = 4 * pi * 1e-7;
epsilon_0 = 8.854187817e-12; 
mu = mu_r * mu_0; 
epsilon = epsilon_r * epsilon_0; 

%% Calculation o
gamma = sqrt(1j * omega * mu * (sigma + 1j * omega * epsilon));
alpha = real(gamma); % Attenuation constant
beta = imag(gamma); % Phase constant

%% Wave parameters
E_max = 1; % Maximum amplitude of E field (V/m)
H_max = E_max / sqrt(mu / epsilon); % Maximum amplitude of H field (A/m), using intrinsic impedance

%% Position and Time 
x = 0:0.01:1*pi; % Range of positions along the x-axis to evaluate

t = 0; % s, can vary this to see the wave at different times

%% Equations
Ey = E_max * exp(-alpha * x) .* cos(omega * t - beta * x - phi); % Electric field along y-axis
Hz = H_max * exp(-alpha * x) .* cos(omega * t - beta * x - phi); % Magnetic field along z-axis
mm = x * 0; % Dummy variable for plotting purposes

%% Plot
figure;
hold on;
plot3(x, mm, mm, 'b'); % Plot wave propagation along x-axis
plot3(x, Ey, mm, 'g'); % Plot electric field along y-axis
plot3(x, mm, Hz, 'r'); % Plot magnetic field along z-axis
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');
legend('Wave Propagation','E_y', 'H_z');
title('Wave Propagation in a Lossy Medium');
grid on;
hold off;

annotation('textbox', [0.2, 0.1, 0.2, 0.1], 'String', 'Copyright (c) 2024 Mohammed Ezzelrgal. All rights reserved.', 'FitBoxToText', 'on', 'BackgroundColor', 'w');





