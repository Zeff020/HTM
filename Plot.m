function [data] = Analysis(filename, strartrow, endrow)

%% Importing the data
Data = ImportFourThermocouples(filename, startRow, endRow);
Data = table2array(Data)



