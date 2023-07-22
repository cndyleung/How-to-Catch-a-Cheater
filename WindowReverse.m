function[originalArray]=WindowReverse(window)

[n,w] = size(window);

originalArrayLength = length(window) + w - 1;

originalArray = zeros(1,originalArrayLength);

for k = 1:length(originalArray)

    % i is the index variable that loops through all rows in array2D
     for i = 1:n

         % j is the index variable that loops through all columns in
         % array2D
         for j = 1:w

         % Assign an element in array1D to array2D
         originalArray(k) = window(i,j);

         % Update the loop variable pt. 1
         k = k + 1;
         end

         % Update the loop variable pt. 2
         k = k - (w-1);
     end

     if length(originalArray) == length(window) + w - 1;
             return
     end
end

end




