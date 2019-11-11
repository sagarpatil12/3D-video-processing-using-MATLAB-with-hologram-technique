srcFiles = dir('C:\Users\Akki\Desktop\project\snaps1\*.PNG');% the folder in which ur images exists
srcFiles1 = dir('C:\Users\Akki\Desktop\project\snaps2\*.PNG');
    aviObject1 = avifile('v111.avi'); 
for i = 1 : length(srcFiles)
    filename = strcat('C:\Users\Akki\Desktop\project\snaps1\',srcFiles(i).name);
     filename1 = strcat('C:\Users\Akki\Desktop\project\snaps2\',srcFiles1(i).name)
     I = imread(filename);
    J = imread(filename1);
     X=imresize(I,[240 240]);
Y=imresize(J,[240 240]);
 
   [m n p] = size(X);

M=3.*m;
N=3.*n;

B=zeros(M,N,p);

for i=1:239
    for j=1:239
        B(i,j+239,:) = X(i,j,:);
    end
  
end

C=imrotate(X,270);
for i=1:239
    for j=1:239
        B(i+239,j+479,:) = C(i,j,:);
    end
end

D=imrotate(Y,270);
for i=1:239
    for j=1:239
        B(i+479,j+239,:) = D(i,j,:);
    end
end

E=imrotate(Y,270);
for i=1:239
    for j=1:239
        B(i+239,j,:) = E(i,j,:);
    end
end

imshow(uint8(B));
set(gcf,'Color','black')
saveas( gcf,'a', 'jpg' )

aviObject1 = addframe(aviObject1,gcf);  % Add the frame to the AVI file
end
