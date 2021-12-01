clear all
addpath Face\ 'People - Code'\ SVM-KM\

[images, labels] = loadPedestrianDatabase('pedestrian_train.cdataset');

num_ims = size(images);
num_ims = num_ims(1);
for i=1:num_ims
    im = images(i,:);
    im = reshape(im, [160 96]);
    hogs(i,:) = hog_feature_vector(im);
end

model = SVMtraining(hogs, labels);

[testImages, testLabels] = loadPedestrianDatabase('pedestrian_test.cdataset');

num_tests = size(testLabels);
num_tests = num_tests(1);
for i=1:num_tests
    im = testImages(i,:);
    im = reshape(im, [160 96]);
    test_hogs(i,:) = hog_feature_vector(im);
    predictions(i,1) = SVMTesting(test_hogs(i,:),model);
end

correct = (predictions == testLabels);
accuracy = sum(correct)/length(correct)