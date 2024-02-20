% Define the data
x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);
z = linspace(-1, 1, 100);
[X, Y, Z] = meshgrid(x, y, z);

% Define the electromagnetic fields
E_x = X;
E_y = Y;
E_z = Z;

H_x = Y;
H_y = X;
H_z = Z;

% Plot the figures
figure;

% Figure 1: E_x
subplot(2, 3, 1);
quiver3(X, Y, Z, E_x, zeros(size(E_x)), zeros(size(E_x)), 'r');
xlabel('x');
ylabel('y');
zlabel('z');
title('E_x');

% Figure 2: E_y
subplot(2, 3, 2);
quiver3(X, Y, Z, zeros(size(E_y)), E_y, zeros(size(E_y)), 'g');
xlabel('x');
ylabel('y');
zlabel('z');
title('E_y');

% Figure 3: E_z
subplot(2, 3, 3);
quiver3(X, Y, Z, zeros(size(E_z)), zeros(size(E_z)), E_z, 'b');
xlabel('x');
ylabel('y');
zlabel('z');
title('E_z');

% Figure 4: H_x
subplot(2, 3, 4);
quiver3(X, Y, Z, H_x, zeros(size(H_x)), zeros(size(H_x)), 'm');
xlabel('x');
ylabel('y');
zlabel('z');
title('H_x');

% Figure 5: H_y
subplot(2, 3, 5);
quiver3(X, Y, Z, zeros(size(H_y)), H_y, zeros(size(H_y)), 'c');
xlabel('x');
ylabel('y');
zlabel('z');
title('H_y');

% Figure 6: H_z
subplot(2, 3, 6);
quiver3(X, Y, Z, zeros(size(H_z)), zeros(size(H_z)), H_z, 'y');
xlabel('x');
ylabel('y');
zlabel('z');
title('H_z');

% Owner's attribution
annotation('textbox', [0.2, 0.1, 0.2, 0.1], 'String', 'Copyright (c) 2024 Mohamed Ezzelrgal. All rights reserved.', 'FitBoxToText', 'on', 'BackgroundColor', 'w');
