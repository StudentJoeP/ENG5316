 
data = readmatrix ("C:\Users\2923821P\Dropbox\PhD\ENG5316 Advanced Ultrasonics\Coursework\Data\Horn data_25.csv");

% Assuming the CSV file has two columns: time and amplitude
time = data(:, 1);
amplitude = data(:, 2);

% Plot original data in the time domain
figure;
subplot(2, 1, 1);
plot(time, amplitude);
title('Time Domain');      % Title for the time domain plot
xlabel('Time (s)');        % X-axis label for time
ylabel('Amplitude');       % Y-axis label for amplitude

% Plot histogram
subplot(2, 1, 2);
histogram(amplitude);
title('25% Power Amplitude Histogram'); % Title for the histogram plot
xlabel('Amplitude');          % X-axis label for amplitude
ylabel('Frequency');          % Y-axis label for frequency

% Display mean, median and standard deviation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
abs_amp = abs(amplitude);
data_mean = mean(abs_amp);
data_std = std(abs_amp);

% Display mean and standard deviation
disp(['Mean: ', num2str(data_mean)]);
disp(['Standard Deviation: ', num2str(data_std)]);