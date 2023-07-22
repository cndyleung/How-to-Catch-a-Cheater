function[h] = Hash31(a)
% This function calculates a hash value from an array of values
%
% Inputs:
% a = A 1D array of values (which could be an empty array or an array
% of characters of integers)
%
% Outputs:
% h = An integer value calculated using the hash 31 algorithm
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Make a equal to an array of integers by converting any characters into
% ASCII values
a = double(a);

% Initialise the hash size value
hashSize = 1048576;

% Set h to 0
h = 0;

% Set the index variable i to loop between the values of 1 to the length of
% the array
for i = 1:length(a)

    % The hash value is equal to the remainder of (a(i) + 31 * h)
    % divided by the hash size
    h = mod((a(i) + 31 * h), hashSize);

    % If the index exceeds the length of the array display the last
    % calculated hash value
   
end
