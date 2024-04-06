 
data = readmatrix ("C:\Users\2923821P\Dropbox\PhD\ENG5316 Advanced Ultrasonics\Coursework\Data\Horn data_40.csv");
% Specify the path to the xlsx file
%csvFilePath = 'C:\Users\2923821P\Dropbox\PhD\ENG5316 Advanced Ultrasonics\Coursework\Data\Horn data_25_Time adjusted.csv';

% Read CSV data
%data = csvread(csvFilePath);

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
title('40% Power Amplitude Histogram'); % Title for the histogram plot
xlabel('Amplitude');          % X-axis label for amplitude
ylabel('Frequency');          % Y-axis label for frequency

% Display mean and standard deviation
meanAmplitude = mean(amplitude);
medianAmplitude = median (amplitude);
stdDevAmplitude = std(amplitude);
disp(['Mean Amplitude: ', num2str(meanAmplitude)]);
disp(['Median Amplitude: ', num2str(medianAmplitude)]);
disp(['Standard Deviation of Amplitude: ', num2str(stdDevAmplitude)]);