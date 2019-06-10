% matlab code to draw Switzerland flag 
	
I = zeros(30, 50, 3); 
% here image is of class ‘uint8’, the range of values 
% that each colour component can have is [0 – 255] 
I = uint8(I); 
%painting the whole image red 
I(:, :, 1) = 255; 
	
%white bar 
I(5:25, 22:28, 1:3) = 255; 
	
%white column 
I(12:18, 10:40, 1:3) = 255; 
	
% show the image formed 
imshow(I); 
