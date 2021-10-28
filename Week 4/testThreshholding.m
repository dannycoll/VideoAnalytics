file_name = 'viptraffic.avi';
videoObj = VideoReader(file_name);

vid_frames = read(videoObj);
bkg = bkgGenerator(vid_frames, 8);
currentFrame = vid_frames(:,:,:,69);
currentFrameGray = rgb2gray(currentFrame);
currentFrameGray = double(currentFrameGray);
bkg = double(bkg);
Blobs=abs(currentFrameGray - bkg) > 20;
Masks = ones(5,5);
Blobs = imclose(Blobs, Masks);
Masks = ones(3,3);
Blobs = imopen(Blobs, Masks);
imshow(Blobs);
