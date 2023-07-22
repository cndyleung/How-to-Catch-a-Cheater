function[indices]=FindMatchIndices(array1, array2)
% This function compares two non-empty 1D arrays and returns a list of
% index positions from array 1 of any values that also appear in array 2.
%
% Inputs:
% array1 = first array
% array2 = second array
%
% Outputs:
% indices = a 1D array containing a list of index positions in array 1 of
% all values that are also found in array 2
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Initialise the output as an empty array
indices = [];

% Use a nested for loop to loop through both array 1 and array 2
for i = 1:length(array1)

    for j = 1:length(array2)

        % If an element in array 2 matches the one in array 1
        if array1(i) == array2(j)

            % The index is stored in an intermediate array
            intermediateArray(i) = i;

            % Remove all zero values stored in the intermediate array and
            % make sure the indices output is a row array
            indices = transpose(nonzeros(intermediateArray));

        end
    end
end
end