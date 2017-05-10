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
dataPlot = plot(time, data, 'Color', [0.0, 0.35, 0.50], 'LineWidth', 1);
title('Signal gdur.wav');
ylabel('x_i');
xlabel('t [s]');

arithmeticAveragePlot = plot(xValues, [arithmeticAverage, arithmeticAverage], 'Color', [0.81, 0.13, 0.16], 'LineWidth', 1);
standardDeviationPlot = plot(xValues, [arithmeticAverage + standardDeviation, arithmeticAverage + standardDeviation], ...
                             xValues, [arithmeticAverage - standardDeviation, arithmeticAverage - standardDeviation], ...
                             'Color', [0.0, 0.19, 0.28], 'LineWidth', 1);

extremeValuePlot = plot(xValues, [minValue, minValue], xValues, [maxValue, maxValue], 'Color', [0.52, 0.52, 0.52], 'LineWidth', 1); 

legend([dataPlot arithmeticAveragePlot(1,1) standardDeviationPlot(1, 1) extremeValuePlot(1,1)], ...
       {'Signal', 'Arithmetic Average', 'Standard Deviation', 'Minimum and Maximum Value'});