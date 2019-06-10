I=zeros(300, 400, 3); 
% here image is of class ‘uint8’, the range of values 
% that each colour component can have is [0 – 255] 
I=uint8(I); 
%painting the whole image Bottle Green 
I(:, :, 1)=0; 
I(:, :, 2)=106; 
I(:, :, 3)=78; 
%loop for rows i.e. for x-axis 
for i=100:200 
%loop for columns i.e. for y-axis 
for j=150:250 
%The equation of circle to make the circle in the center. 
	if round(sqrt((i-150)^2+(j-200)^2)<50) 
% Paint the circle with Bright Red 
	I(i, j, 1)=244; 
	I(i, j, 2)=42; 
	I(i, j, 3)=65; 
	end % end if loop. 
end % end column loop. 
end % end row loop. 
% show the image formed. 
imshow(I); 
