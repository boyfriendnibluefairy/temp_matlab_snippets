%% Beamwidth of a Gaussian beam

clc; clear;

w0 = 10^-3;     % initial radius of the beam width [m]
lambda0 = 0.5*10^-6;    % wavelength [microns]
k0 = 2*pi/lambda0;      % wavenumber
zr = (k0*w0^2)/2;       % Rayleigh range
z = linspace(0, 10*zr, 1000);   % various propagation distances

% beamwidth as a function of z
w1 = sqrt(w0^2*(1+(z/zr).^2));
w2 = -sqrt(w0^2*(1+(z/zr).^2));

% plot the beamwidth
figure
plot(z,w1,z,w2,'b');
xlabel('z (m)')
ylabel('w(z)  (m)')
grid on
