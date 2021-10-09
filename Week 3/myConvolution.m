function Iout = myConvolution(Iin, B)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[rows, cols] = size(Iin);
[mRows, mCols] = size(B);
Iout = zeros(rows-mRows, cols-mCols);
for i=1:rows-mRows
    for j=1: cols-mCols
        out = 0;
        for k=1:mRows
            for l=1:mCols
                out = out + Iin(i+k-1,j+l-1) * B(k,l);
            end
        end
        Iout(i,j) = out;
    end
end
end