% Doppler Velocity Calculation

c = 3*10^8;         % speed of light
f = 77e9;           % frequency in Hz

% TODO : Calculate the wavelength
lambda = c / f;

% TODO : Define the doppler shifts in Hz using the information from above 
f_d = [3e3 -4.5e3 11e3 -3e3]; % doppler shifts [Hz]

% TODO : Calculate the (relative) velocity of the targets  fd = 2*vr/lambda
v_r = f_d * lambda / 2;

% TODO: Display results
disp(v_r);