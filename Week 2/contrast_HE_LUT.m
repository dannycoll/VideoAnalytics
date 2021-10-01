function Lut = contrast_HE_LUT(Iin)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
Lut = zeros(256,1);
vals = histogram(Iin, 'BinLimits', [0,256], 'BinWidth', 1).Values;
[rows, cols] = size(Iin);
sum = 0;
for i=1:256
    sum = sum + vals(i);
    calc = ((256*sum)/(rows*cols))-1;
    Lut(i) = max(0,calc);
Lut = uint8(Lut);
end