function[minValue,position] = RightMin(array)
% This function finds the value and position of the rightmost minimum in an
% array of values
%
% Inputs:
% array = A 1D array of values that contains at least one value
%
% Outputs:
% minValue = The minimum value
% position = The rightmost position of that minimum
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Call the min function to get the minimum value and the leftmost position
[minValue , position] = min(array);

% The loop iterates through the values of 1 to the length of the array
for i = 1:length(array)

    % If the element of the array is equal to the minimum value
    if array(i) == minValue

        % The position is equal to the index position
        position = i;
    end
end
end

