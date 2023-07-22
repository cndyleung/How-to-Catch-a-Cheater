function[matchPercentage]= SimilarityScore(posMatchArray, kValue, totalLength)
% This function calculates a similarity score by taking a lost of matched
% positions for a strting and determining what proportion of characters in
% a string matched
%
% Inputs:
% posMatchArray = A 1D array containing a list of indices which correspond to position
% matches (this could  be an empty array)
% kValue = The k value indicates the length of each match (which will be a
% positive integer greater than zero)
% totalLength = The total length of of the string that was converted into k-grams
%
% Outputs:
% matchPercentage = The percentage of the string that matched, returned as
% a decimal
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Initialise the variable matches which is the positions in the string
% where the characters match as an empty 1D array
matches = [];

% The loop iterates through all elements in the posMatchArray
for i = 1 : length(posMatchArray)

    % j extracts the index positions stored in the array
    j = posMatchArray(i);

    % Assign all the matched characters (consider the k value by adding k characters after
    % the matched position eg. if there is a match in position 2 and k = 3, this means 2,3 and 4 must match)
    % and assign the positions of these matched characters to the 1D array matches
    matches(j:j+kValue-1) = j:j+kValue-1;

    % Use the unique function to makes sure there are no duplicates
    unique(matches);
end

% Remove all zeros and tranpose it so that matches is a 1D row array
matches = transpose(nonzeros(matches));

% The match percentage is the length of the matches array (ie. the amount
% of characters that matched) divided by the total length of the string
% that was converted into k - grams
matchPercentage = (length(matches))/totalLength;

end