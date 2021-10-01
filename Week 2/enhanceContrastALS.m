function [Iout, Lut] = enhanceContrastALS(Iin)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
vals = histogram(Iin,'BinLimits', [0,256], 'BinWidth', 1).Values;
i1 = find(vals>10,1, 'first');
i2 = find(vals>10,1, 'last');
m = 255 / (i2-i1)
c = -m*i1

Lut = contrast_LS_lut(m,c);
Iout = intlut(Iin, Lut);
end