function [Iout, Lut] = enhanceContrastHE(Iin)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
Lut = contrast_HE_LUT(Iin);
Iout = intlut(Iin, Lut);
end