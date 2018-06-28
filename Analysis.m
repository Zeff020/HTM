function [Cell1T,Cell2T,Cell3T,Cell4T,Time] = Analysis(filename, startRow, endRow)


%% If no startRow and endRow are defined, this will automatically select all the data
if nargin<=2
    startRow = 3;
    endRow = inf;
end

%% Importing the data
Data = ImportFourThermocouples(filename, startRow, endRow);
Data = table2array(Data); % Turning data into array bc it's easier to work with

%% Defining variables
SetT = Data(:,2);
CuT = Data(:,3);
Cell1T = Data(:,4);
Cell2T = Data(:,5);
Cell3T = Data(:,6);
Cell4T = Data(:,7);
Voltage = Data(:,8);
Time = Data(:,1);

%% Plotting the graphs
subplot(2,1,1)
plot(Time,SetT,Time,CuT,Time,Cell1T,Time,Cell2T,Time,Cell3T,Time,Cell4T)
xlabel("Time (s)")
ylabel("Temperature (C)")
subplot(2,1,2)
plot(Time,Voltage)
xlabel("Time (s)")
ylabel("Voltage (V)")
end



