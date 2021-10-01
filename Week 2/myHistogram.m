function [output] = myHistogram(I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[rows, cols] = size(I);
output = zeros(1,rows);
for i=1:rows
    for j=1:cols
        output(1,I(i,j)+1) = output(1,I(i,j)+1)+1;
    end
end
end