function dEuc = EuclideanDistance(sample1, sample2)
size1 = size(sample1);
sum = 0;
for i=1:size1(2)
    k = sample1(1,i);
    j = sample2(1,i);
    toAdd = k-j;
    toAdd = toAdd^2;
    sum = sum + toAdd;
end
dEuc = sqrt(sum);