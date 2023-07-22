function[fingerprint] = Fingerprint(window)
% This function takes a set of windows (in the form of a 2D array) and
% calculates a document fingerprint using the winnowing algorithm (i.e. we
% select the rightmost minimum from each window). It will return the
% document fingerprint as a 2D array in which each column contains a
% winnowed value and its corresponding position with respect to the
% original array.
%
% Inputs:
% window = a n x w 2D array representing a set of windows, where each window has w
% values in it
%
% Outputs:
% fingerprint = a 2 row 2D array representing a fingerprint, which consists of a set of
% winnowed values (the first row) and the relative positions of those
% values (the second  row). Each column of the output therefore contains a
% hash value/position pair
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Initialise the size of the window for the for loop, n is the number of
% rows and w is the window size ie. number of columns
[n, w] = size(window);

% Initialise the output as an empty array
fingerprint = [];

% This for loop iterates through each row
for i = 1:n

    % arrayWindow is the array we want to find the rightmost minimum from (eg. the
    % first window/row). This line of code indexes a row out.
    arrayWindow = window(i, 1:w);

    % Call the function RightMin to find the rightmost minimum and position to store it
    % in row 1, element i and row 2, element i respectively in the variable
    % Fingers
    [Fingers(1,i), Fingers(2,i)] = RightMin(arrayWindow);

    % Set the position of the minimum to be with respect to the original
    % array (and not to the window/k)
    Fingers(2,i) = Fingers(2,i) + i - 1;
end

% Store the size of the Fingers array into the variables rows(~ because the variable is unused) and columns
[~,columns] = size(Fingers);

% Make the first column in fingerprint always equal to the first column in Fingers
fingerprint(1:2,1) = Fingers(1:2,1);

% Counter is the index for fingerprint
counter = 2;

% The for loop variable j loops through the second element until the last
% column
for j = 2:columns

    % If the positions(row 2) in successive columns are not equal (this line of code gets rid of
    % double-ups in fingerprints)
    if Fingers(2, j-1) ~= Fingers(2,j)

        % Fingerprint(output) is equal to the minimum value and position
        % found in Fingers at that position
        fingerprint(1:2,counter) = Fingers(1:2,j);

        % Update the counter variable
        counter = counter + 1;
    end
end
end





