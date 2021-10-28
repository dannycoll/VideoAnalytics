file_name = 'viptraffic.avi';
videoObj = VideoReader(file_name);

vid_frames = read(videoObj);
vid_size = size(vid_frames);
figure
for i=1:20
    bkg = bkgGenerator(vid_frames, i);
    subplot(4,5,i);
    imshow(bkg);
end
% 8 appears to be best