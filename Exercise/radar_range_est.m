% -------------------------------
% Radar Range Estimation Exercise
% -------------------------------

% Using the following MATLAB code sample, complete the TODOs to calculate 
% the range in meters of four targets with respective measured 
% beat frequencies [0 MHz, 1.1 MHz, 13 MHz, 24 MHz].
% 
% You can use the following parameter values:
% 
% The radar maximum range = 300m
% The range resolution = 1m
% The speed of light c = 3*10^8 m/s

% Note : The sweep time can be computed based on the time needed for 
% the signal to travel the maximum range. In general for an FMCW 
% radar system, the sweep time should be at least 5 to 6 times 
% the round trip time. This example uses a factor of 5.5:

d_res = 1;      % range resolution [m]
R_max = 300;    % max range [m]
c = 3e8;        % speed of light [m/s]
f_b = 0;        % beat frequency [Hz]

% TODO : Find the Bsweep of chirp for 1 m resolution
% d_res = c/(2*B_sweep);
B_sweep = c/(2*d_res);

% TODO : Calculate the chirp time based on the Radar's Max Range
% R = (c*T_s*f_b)/(2*B_sweep);
chirp_factor = 5.5;
T_sweep = chirp_factor * 2 * R_max / c;

% TODO : Define the frequency shifts 
f_b = [0 1.1e6 13e6 24e6]; % beat frequencies for all four targets
calculated_range = c*T_sweep*f_b/(2*B_sweep); % range calculation

% Display the calculated range
disp(calculated_range);