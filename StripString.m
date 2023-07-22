function[strippedString]=StripString(originalString)
% This function removes any whitespace, unprintable characters and converts
% any uppercase characters to lowercase from a string
%
% Inputs:
% originalString = the original string before it is stripped
%
% Outputs:
% strippedString = output string after it has been stripped
%
% Author: Cindy Leung
% Last Modified: 10/09/2022

% Clear the workspace and command window
% clear;
% clc;

% Turn the input array into lowercase unicode/ASCII values
unicodeValues = double(lower(originalString));

% Assign the length of the array to the variable arrayLength
arrayLength = length(unicodeValues);

% Initialise the for loop variable
i = 1;

% While the index is smaller than the length of the unicode array
while i <= arrayLength

    % If the element in the array falls outside of the range 33 to 126
    % (inclusive)
    if unicodeValues(i) < 33 || unicodeValues(i) > 126

        % We discard the element by assigning it an empty array
        unicodeValues(i) = [];

        % The length decreases by 1
        arrayLength = arrayLength - 1;

        % The index decreases by 1
        i = i -1;
    end

    % Update our index variable so that it does not infinitely loop
    i = i + 1;
end

% If the unicodeValues array is empty
if isempty(unicodeValues) == 1

    % This means strippedString is an empty 0x0 character array
    strippedString = char.empty;

else

% Convert the unicode values back into a character array for the output
strippedString = char(unicodeValues);
end

end

