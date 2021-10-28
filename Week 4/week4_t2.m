file_name = 'viptraffic.avi';
videoObj = VideoReader(file_name);

vid_frames = read(videoObj);
vid_size = size(vid_frames);
first_frame = vid_frames(:,:,:,1);

bkg = bkgGenerator(vid_frames, 8);

figure
subplot(121);
imshow(first_frame);
subplot(122);
imshow(bkg);

figure
for t= 1:vid_size(4)
    currentFrame = vid_frames(:,:,:,t);
    currentFrameGray = rgb2gray(currentFrame);
    subplot(2,3,1);
    imshow(currentFrameGray);
    title(['Frame: ',num2str(t)]);
    subplot(2,3,2);
    imshow(uint8(bkg));
    title('Background');
    bkg = double(bkg);
    currentFrameGray = double(currentFrameGray);
    Blobs=abs(currentFrameGray -bkg) > 60;
    subplot(2,3,3);
    imshow(Blobs);
    title('Blobs');
    colormap(gray);
    subplot(2,3,4);
    Masks = ones(9,9);
    Blobs = imclose(Blobs, Masks);
    Blobs = imopen(Blobs, Masks);
    Blobs = imclose(Blobs, Masks);
    imshow(Blobs);
    subplot(2,3,5);
    labels = bwlabel(Blobs, 4);
    
    NumVehicles=max(max(labels));
    imshow(labels, []);
    BBs = [];
    for b= 1:NumVehicles
        [ys, xs]=find(labels==b);
        BB = [min(xs) min(ys) max(xs) max(ys)];
        BBs = [BBs; BB];
    end
    subplot(2,3,6);
    imshow(currentFrame);
    title('Detections');
    hold on;
    for b= 1:NumVehicles
        rectangle('Position', [BBs(b,1) BBs(b,2) BBs(b,3)-BBs(b,1)+1 BBs(b,4)-BBs(b,2)+1], 'EdgeColor', 'r')
    end
    hold off;
    pause(0.2)

end

