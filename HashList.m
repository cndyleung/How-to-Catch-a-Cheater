function[hashes] = HashList(cellArray)
% This function calculates the hash31 value for every string stored in a
% cell array to generate a sequence of hashed values which will be integers
%
% Inputs:
% cellArray = a 1xn cell array where each element of the array is a string
%
% Outputs:
% hashes = a 1xn array containing hash values for the corresponding
% elements of the cell array
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Initialise the output as an empty array
hashes = [];

% The loop iterates through all elements of the cell array
for i = 1:length(cellArray)

    % Assign the current element in the cell array to a variable named
    % string
    string = cellArray{i};

    % Call the Hash31 function to calculate the hash value for every string
    % stored in the cell array input
    hashes(i) = Hash31(string);
end

end