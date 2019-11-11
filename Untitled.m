 clc;
    clear all;
    close all;
       vid1 = videoinput('winvideo',2, 'YUY2_320x240');
       vid2 = videoinput('winvideo',3, 'YUY2_320x240');
      vid3 = videoinput('winvideo',4, 'YUY2_320x240');
      vid4 = videoinput('winvideo',5, 'YUY2_320x240');
      
src1 = getselectedsource(vid1);
src2 = getselectedsource(vid2);
src3= getselectedsource(vid3);
src4= getselectedsource(vid4);

      
     set(vid1, 'FramesPerTrigger', Inf);
      set(vid2, 'FramesPerTrigger', Inf);
     set(vid3, 'FramesPerTrigger', Inf);
     set(vid4, 'FramesPerTrigger', Inf);
       
       set(vid1, 'ReturnedColorspace', 'rgb');
       set(vid2, 'ReturnedColorspace', 'rgb');
      set(vid3, 'ReturnedColorspace', 'rgb');
      set(vid4, 'ReturnedColorspace', 'rgb');
      
vid1.FramesPerTrigger = 1;
vid2.FramesPerTrigger = 1;
vid3.FramesPerTrigger = 1;
vid4.FramesPerTrigger = 1;
 preview(vid1)
 preview(vid2)
 pause(0.01);
preview(vid3)
preview(vid4)





