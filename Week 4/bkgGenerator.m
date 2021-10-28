function [Bkg] = bkgGenerator(videoStream, sampling)
buffer = [];
counter = 0;
for t= 1:sampling:size(videoStream,4)
    counter=counter+1;
    buffer(:,:,counter)= rgb2gray(videoStream(:,:,:,t));
end
Bkg = median(buffer, 3);
Bkg = uint8(Bkg);