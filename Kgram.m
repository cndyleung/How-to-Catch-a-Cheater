function[cellArrayk]=Kgram(kValue, string)
% This function takes a string and divides it into a sequence of k-grams,
% where each element is k characters long
%
% Inputs:
% kValue = the k value which is a positive integer greater than 0
% string = the input string to be passed into our function
%
% Outputs:
% cellArrayk = a 1xn cell array where each element of the array is one of
% the kgrams.
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% If k is greater than the length of the string we return a 1x1 cell array containing the string
if kValue >= length(string)
    cellArrayk = {string};
    return
end

% Initialise the index variable
i = 1;

% While the k value is less than the length of the string
while kValue <= length(string)

    % The i element of the cell array is equal to the i element to the
    % length of the k value (ie. the k-gram is k characters long from the
    % index)
    cellArrayk{i} = string(i:kValue);

    % Update the both the k value and index value to collect the next
    % k-gram
    kValue = kValue + 1;
    i = i + 1;
end
end

