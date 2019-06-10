
flag=uint8(zeros(300, 600, 3)); 
flag(:, :, :)=255; 
%Saffron Color 
flag(:, 1:200, 1)=0; 
flag(:, 1:200, 2)=85; 
flag(:, 1:200, 3)=164; 

%Green Color 
flag(:, 400:600, 1)=239; 
flag(:, 400:600, 2)=65; 
flag(:, 400:600, 3)=53; 

figure, imshow(flag)
