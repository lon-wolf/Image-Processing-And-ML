function mainActivity()
clc;
close all force;
vid = videoinput('winvideo', 1, 'YUY2_640x480');
flushdata(vid);
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;

preview(vid);

vid.ReturnedColorspace = 'rgb';

pause(2);

while 1

pause();

im=getsnapshot(vid);





imshow(im);

im=imcrop(im);
im=processImage(im);

if sum(sum(1-im))==0
    stoppreview(vid);
    close all force;
    break;
end



clc;
savetxt(im);


end

end
