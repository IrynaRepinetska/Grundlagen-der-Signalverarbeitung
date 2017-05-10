[data, frequence] = audioread(strrep('data\gdur.wav', '\', filesep));

arithmeticAverage = mean(data);
standardDeviation = sqrt(var(data));
minValue = min(data);
maxValue = max(data);

grid on;
dataPlot = plot(data, 'Color', [0.0, 0.35, 0.50], 'LineWidth', 1);
hold;

xValues = [0, numel(data)];
xAxis = [0, 0];
plot(xValues, xAxis, 'k', 'LineWidth', 1);

arithmeticAveragePlot = plot(xValues, [arithmeticAverage, arithmeticAverage], 'Color', [0.81, 0.13, 0.16], 'LineWidth', 1);
standardDeviationPlot = plot(xValues, [arithmeticAverage + standardDeviation, arithmeticAverage + standardDeviation], ...
                             xValues, [arithmeticAverage - standardDeviation, arithmeticAverage - standardDeviation], ...
                             'Color', [0.0, 0.19, 0.28], 'LineWidth', 1);

extremeValuePlot = plot(xValues, [minValue, minValue], xValues, [maxValue, maxValue], 'Color', [0.52, 0.52, 0.52], 'LineWidth', 1); 

legend([dataPlot arithmeticAveragePlot(1,1) standardDeviationPlot(1, 1) extremeValuePlot(1,1)], ...
       {'Signal', 'Arithmetic Average', 'Standard Deviation', 'Minimum and Maximum Value'});