function prediction = NNTesting(testImage, modelNN)
num_images = size(modelNN.neighbours);
min_dist = 100;
image_idx = 1;
for i=1:num_images(1)
    sample2 = modelNN.neighbours(i,:);
    dist = EuclideanDistance(testImage,sample2);
    if dist <= min_dist
        min_dist = dist;
        image_idx = i;
    end
end
prediction = modelNN.labels(image_idx);