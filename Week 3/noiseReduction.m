function Iout = noiseReduction(I,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mask = ones(N,N) / (N*N);
Iout = uint8(myConvolution(I, mask));
end