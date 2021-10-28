function Iout = noiseReductionMedian(Iin, mSize)
[rows,cols] = size(Iin);
Iout = zeros(rows-mSize, cols-mSize);

for i=1:rows-mSize
    for j=1: cols-mSize
        out = zeros(mSize*mSize,1);
        for k=1:mSize
            for l=1:mSize
                out(k+l-1) = Iin(i+k-1,j+l-1);
            end
        end
        m = median(out);
        Iout(i,j) = m;
    end
end
end