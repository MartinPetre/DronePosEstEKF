clear; clc; close all;

% Define parameters
fs = 100; % Sampling frequency
n = 2;    % Filter order
w = 10;    % Cutoff frequency

% Create Butterworth filter coefficients
[b, a] = butter(n, (w/(fs/2)));

coeff = 0.1;

% Generate white noise signal
t = 0:1/fs:1; % Time vector (1 second duration)
noise = randn(size(t)); % Generate white noise

% Filter the white noise signal
filtered_noise = filter(b, a, noise);

%% POWER SPECTRUM CALCULATION
% Calculate power spectrum using pwelch
window = hamming(length(noise)); % Window for pwelch
nfft = 1024; % Number of FFT points

% Calculate power spectrum of original white noise
[pxx_noise, f_noise] = pwelch(noise, window, [], nfft, fs);

% Calculate power spectrum of filtered noise
[pxx_filtered, f_filtered] = pwelch(filtered_noise, window, [], nfft, fs);

%% PLOTTING

% Plot the frequency response of the filter
figure(1)
freqz(b, a, [], fs)
title('Frequency Response of the Filter')

% Plot the original white noise and the filtered signal
figure(2)
plot(t, noise, 'b', t, filtered_noise, 'r')
legend('Original White Noise', 'Filtered Noise')
xlabel('Time')
ylabel('Amplitude')
title('Original White Noise vs Filtered Noise')

% Plot the power spectrum of original white noise and filtered signal
figure(3);
plot(f_noise, 10*log10(pxx_noise), 'b');
title('Power Spectrum of Original White Noise');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');

hold on
plot(f_filtered, 10*log10(pxx_filtered), 'r');
title('Power Spectrum of Filtered Noise');
xlabel('Frequency (Hz)');
ylabel('Power/Frequency (dB/Hz)');