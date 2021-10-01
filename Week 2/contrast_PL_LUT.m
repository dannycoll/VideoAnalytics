function lut = contrast_PL_LUT(gamma)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
lut = zeros(256,1);
for i=1:256
    val = (i^gamma)/(255^(gamma-1));
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