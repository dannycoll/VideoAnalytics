function [Edges, Ihor, Iver] = EdgeExtraction(Iin, B1, B2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Iver = conv2(Iin, B1);
Ihor = conv2(Iin, B2);

Edges = sqrt(Iver*Iver + Ihor*Ihor);
end