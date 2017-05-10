% Iryna Repinetska 562366
% Philipp Waldinger 565229

[data, frequence] = audioread(strrep('data\gdur.wav', '\', filesep));

duration = length(data)/frequence;
time = [ 1/frequence : 1/frequence : duration ];
xValues = [0, duration];

arithmeticAverage = mean(data);
standardDeviation = sqrt(var(data));
minValue = min(data);
maxValue = max(data);

hold;
grid on;
dataPlot = plot(time, data, 'Color', [0.04, 0.03, 0.05], 'LineWidth', 1);
title('Signal gdur.wav');
ylabel('x_i');
xlabel('t [s]');

arithmeticAveragePlot = plot(xValues, [arithmeticAverage, arithmeticAverage], 'Color', [0.94, 0.34, 0.27], 'LineWidth', 1.5);
standardDeviationPlot = plot(xValues, [arithmeticAverage + standardDeviation, arithmeticAverage + standardDeviation], ...
                             xValues, [arithmeticAverage - standardDeviation, arithmeticAverage - standardDeviation], ...
                             'Color', [0.97, 0.76, 0.18], 'LineWidth', 1.5);

extremeValuePlot = plot(xValues, [minValue, minValue], xValues, [maxValue, maxValue], 'Color', [0.32, 0.70, 0.79], 'LineWidth', 1.5); 

legend([dataPlot arithmeticAveragePlot(1,1) standardDeviationPlot(1, 1) extremeValuePlot(1,1)], ...
       {'Signal', 'Arithmetic Average', 'Standard Deviation', 'Minimum and Maximum Value'});