function[position1, position2] = FindMatchPositions(finger1, finger2)
% This function compares two fingerprints and determines which positions in
% fingerprint 1 have a value that is also found in string 2 and which
% positions in fingerprint 2 have a value that is also found in string 1.
%
% Inputs:
% finger1 = A fingerprint for string 1
% finger2 = A fingerprint for string 2
%
% Outputs:
% position1 = A 1D array containing a list of index positions in string 1 of all
% values that are also found in string 2 (row array)
% position2 = A 1D array containing a list of index positions in string 2 of all
% values that are also found in string 2 (row array)
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Call the FindMatchIndices helper function to find the index positions for the values in
% finger1 that also appear in finger2
indices1 = FindMatchIndices(finger1(1,1:end), finger2(1,1:end));

% Call the FindMatchIndices helper function to find the index positions for
% the values in finger2 that also appear in finger1
indices2 =  FindMatchIndices(finger2(1,1:end), finger1(1,1:end));

% Initialise the first output as an empty array (if no matches are found an
% empty array is returned)
position1 = [];

% Initialise the index variable for position1
counter1 = 1;

% The for loop iterates through the value of 1 up to the length of indices1
for i = 1 : length(indices1)

    % j extracts the matched index value found above by the helper function to find the
    % corresponding position in the fingerprint
    j = indices1(i);

    % Assign the the corresponding position(row 2 of the fingerprint) to
    % the output variable
    position1(counter1) = finger1(2,j);

    % Update the index variable for position1
    counter1 = counter1 + 1;
end

% Initialise the second output as an empty array (if no matches are found
% an empty array is returned)
position2 = [];

% Initialise the index variable for position2
counter2 = 1;

% The for loop iterates through the value of 1 up to the length of indices2
for i = 1 : length(indices2)

    % j extracts the matched index value found above by the helper function to find the
    % corresponding position in the fingerprint
    j = indices2(i);

    % Assign the the corresponding position(row 2 of the fingerprint) to
    % the output variable
    position2(counter2) = finger2(2,j);

    % Update the index variable for position2
    counter2 = counter2 + 1;
end

end