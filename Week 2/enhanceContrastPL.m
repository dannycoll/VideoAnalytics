function Iout = enhanceContrastPL(Iin, gamma)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
lut = contrast_PL_LUT(gamma);
Iout = intlut(Iin, lut);
end