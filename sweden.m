% matlab code to draw Sweden flag 

I = zeros(300, 600, 3); 

%painting the whole image blue 
I(:, :, 3) = 255; 

%yellow bar 
I(120:180, :, 1:2) = 255; I(120:180, :, 3) = 0; 

%yellow column 
I(:, 150:210, 1:2) = 255;I(:, 150:210, 3) = 0; 

%print the matrix as image 
imshow(I) 
