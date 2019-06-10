% MATLAB code to draw Sudan flag 

% initialising a zero matrix of 300X600X3 
img=uint8(zeros(300, 600, 3)); 
img(:, :, :)=255; 
%Red Color 
img(1:100, 151:600, 1)=210; 
img(1:100, 151:600, 2)=16; 
img(1:100, 151:600, 3)=42; 
%black Color 
img(200:300, 150:600, :)=0; 
% Lower Triangle 
for i=1:150 
	for j=1:150 
		if(j<i) 
			img(i, j, 1)=0; 
			img(i, j, 2)=114; 
			img(i, j, 3)=41; 
		elseif(i<=100) 
			img(i, j, 1)=210; 
			img(i, j, 2)=16; 
			img(i, j, 3)=42; 
			
		end
	end
end
% Upper Triangle 
for i=150:300 
	for j=1:150 
		if(i+j<=300) 
			img(i, j, 1)=0; 
			img(i, j, 2)=114; 
			img(i, j, 3)=41; 

		elseif(i>=200) 
			img(i, j, :)=0;			 
		end
	end
end

% displaying the matrix as image 
figure, imshow(img); 
