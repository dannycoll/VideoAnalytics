function lut = contrast_LS_lut(m, c)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
lut = zeros(256,1);
for i=1:256
    val = m*i+c;
    if val<0
        lut(i)=0;
    elseif val>255
        lut(i)=255;
    else
        lut(i)=val;
    end
end
lut = uint8(lut);
end