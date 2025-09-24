data = readtable("Teammate_Calibration.csv");

% Graphing Data

% First plot the data points
plot(data.Airspeed_m_s_, data.AverageVoltage_Volts_, 'r.', ...
'MarkerSize', 15)
hold on

% Creating the linear trendline of the data 
polyX = polyfit(data.Airspeed_m_s_, data.AverageVoltage_Volts_, 1);
polyY = polyval(polyX, data.Airspeed_m_s_, 'b');

plot(data.Airspeed_m_s_, polyY);

% Visual for Graph

xlabel('Airspeeed (m/s)')
ylabel('Voltage (V)')

grid on

legend on
legend('Calibration Velocity Point', 'Linear Trendline')