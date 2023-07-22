function[array2D] = Window(w, array1D)
% This function takes a sequence of integer values and creates a 2D array
% of windows for a specified window size, w.
%
% Inputs:
% w = the window size which is a positive integer greater than 0
% array1D = a 1D array of integer values
%
% Outputs:
% array2D = a 2D array of integer values where each row of the array is a
% window containing w integer values
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% If the window size is larger than the length of the array, we return the
% array
if w > length(array1D)
    array2D = array1D;
    return
end

% Initialise the size of array2D
array2D = zeros((length(array1D) - w + 1),w);

% i is the index variable that loops through all elements in array1D
for i = 1:length(array1D)

    % j is the index variable that loops through all rows in array2D
    for j = 1:length(array1D) - w + 1

        % k is the index variable that loops through all columns in
        % array2D
        for k = 1:w

            % Assign an element in array1D to array2D
            array2D(j,k) = array1D(i);

            % Update the loop variable pt. 1
            i = i + 1;
        end

        % Update the loop variable pt. 2
        i = i - (w-1);
    end

    % If all the elements in array2D are filled we return this as the
    % output, this prevents the index from exceeding the number of array
    % elements
    if ismissing(array2D) == 0
        return
    end
end
end