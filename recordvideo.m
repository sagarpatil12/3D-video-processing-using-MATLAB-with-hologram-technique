    clc;
    clear all;
    close all;
      vid1 = videoinput('winvideo',2, 'YUY2_320x240');
      vid2 = videoinput('winvideo',3, 'YUY2_320x240');
      vid3 = videoinput('winvideo',4, 'YUY2_320x240');
      vid4 = videoinput('winvideo',5, 'YUY2_320x240');
      
      set(vid1, 'FramesPerTrigger', Inf);
      set(vid2, 'FramesPerTrigger', Inf);
      set(vid3, 'FramesPerTrigger', Inf);
      set(vid4, 'FramesPerTrigger', Inf);
      
      set(vid1, 'ReturnedColorspace', 'rgb');
      set(vid2, 'ReturnedColorspace', 'rgb');
      set(vid3, 'ReturnedColorspace', 'rgb');
      set(vid4, 'ReturnedColorspace', 'rgb');
      
      vid1.FrameGrabInterval = 1;
      vid2.FrameGrabInterval = 1;% distance between captured frames
      vid3.FrameGrabInterval = 1;
      vid4.FrameGrabInterval = 1;% distance between captured frames
      
      start(vid1)
      start(vid2)
      start(vid3)
      start(vid4)
      
      aviObject1 = avifile('video1.avi');   % Create a new AVI file
      aviObject2=avifile('video2.avi');
      aviObject3 = avifile('video3.avi');   % Create a new AVI file
      aviObject4=avifile('video4.avi');
      
      for iFrame = 1:120                  % Capture 100 frames
         snap1=getsnapshot(vid1);
         snap2=getsnapshot(vid2);
         snap3=getsnapshot(vid3);
         snap4=getsnapshot(vid4);
         
         frame1= im2frame(snap1);                    % Convert Image to a movie frame
         frame2= im2frame(snap2);
         frame3= im2frame(snap3);                    % Convert Image to a movie frame
         frame4= im2frame(snap4);
         
         aviObject1 = addframe(aviObject1,frame1);  % Add the frame to the AVI file
         aviObject2 = addframe(aviObject2,frame2);
         aviObject3 = addframe(aviObject1,frame3);  % Add the frame to the AVI file
         aviObject4 = addframe(aviObject2,frame4);
         
      end
      aviObject1 = close(aviObject1);         % Close the AVI file
      aviObject2 = close(aviObject2);
      aviObject3 = close(aviObject3);         % Close the AVI file
      aviObject4 = close(aviObject4);
      
      stop(vid1);
      stop(vid2);
      stop(vid3);
      stop(vid4);
      
      flushdata(vid1);
      flushdata(vid2);
      flushdata(vid3);
      flushdata(vid4);
 
