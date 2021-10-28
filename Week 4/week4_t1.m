file_name = 'viptraffic.avi';
videoObj = VideoReader(file_name);

vid_frames = read(videoObj);

frame = vid_frames(:,:,:,1);
imshow(frame);