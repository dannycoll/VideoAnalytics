function [output] = addOneWithFors(input)
[rows, columns] = size(input);
for index = 1:rows
    for jndex = 1:columns
        input(index, jndex) = input(index,jndex)+1;
    end
end
output = input;
end