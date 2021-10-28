noisy_boat = imread('boatnois.jpg');
noisy_boat = noiseReduction(noisy_boat, 3);
noisy_boat = enhanceContrastALS(noisy_boat);

boat = noiseReductionMedian(noisy_boat, 2);

b1 = [-1 0 1; -1 0 1; -1 0 1];
b2 = [-1 -1 -1; 0 0 0; 1 1 1];

for i=1:12
    subplot(3,4, i);
    
    [ed, ~, ~] = EdgeExtraction(boat, b1, b2);
    bin_ed= ed<=60+i;
    imshow(bin_ed, []);
end
figure
subplot(121);
[ed, ~, ~] = EdgeExtraction(boat, b1, b2);
bin_ed= ed<=67;
imshow(bin_ed, []);
subplot(122);
imshow(noisy_boat, []);
