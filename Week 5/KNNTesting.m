function prediction = KNNTesting(testImage, modelNN, K)

num_images = size(modelNN.neighbours);
dists = zeros(num_images(1),1);

for i=1:num_images(1)
    sample2 = modelNN.neighbours(i,:);
    dist = EuclideanDistance(testImage,sample2);
    dists(i,1) = dist;
end
sorted = sort(dists,'ascend');
sorted = sorted(1:K);
indexes = zeros(K,1);
for i=1:K
    indexes(i) = find(dists == sorted(i));
end
labels = modelNN.labels(indexes);
modeL = mode(labels);
if labels > 0
    if labels <1
        foo = 1;
    end
end
prediction = mode(labels);