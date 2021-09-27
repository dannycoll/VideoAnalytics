function [output] = searchingZeros(input)
[rows, columns] = size(input);
count = 0;
for index=1:rows
    for jndex=1:columns
        if input(index, jndex) == 0
            count = count+1
        end
    end
end
output = count
end