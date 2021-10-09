function Iout = noiseReduction(I,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mask = ones(N,N) / (N*N);
Iout = conv2(I,mask, 'same');
end