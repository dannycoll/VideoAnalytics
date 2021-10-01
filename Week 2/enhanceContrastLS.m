function Iout = enhanceContrastLS(Iin, m, c)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
Lut = contrast_LS_lut(m,c);
Iout = intlut(Iin,Lut);
end