% MATLAB code to draw Seychelles flag 

% initialising a zero matrix of 300X600X3 
im=uint8(zeros(300, 600, 3))+255; 

% blue 
for i = 1:300 
	for j = 1:600 
		im(i, j, 1) = 0; 
		im(i, j, 2) = 63; 
		im(i, j, 3) = 135; 
	end
end

% yellow 
for i = 1 : 300 
	for j = 1 : 600 
		m = round(abs((i-300)/(j-1)), 2); 
		if m <= 1.55 
			im(i, j, 1) = 252; 
			im(i, j, 2) = 216; 
			im(i, j, 3) = 86; 
		end
	end
end

% red 
for i = 1 : 300 
	for j = 1 : 600 
		m = round(abs((i-300)/(j-1)), 2); 
		if m <= 0.75 
			im(i, j, 1) = 214; 
			im(i, j, 2) = 40; 
			im(i, j, 3) = 40; 
		end
	end
end

% white 
for i = 1 : 300 
	for j = 1 : 600 
		m = round(abs((i-300)/(j-1)), 2); 
		if m <= 0.36 
			im(i, j, 1) = 255; 
			im(i, j, 2) = 255; 
			im(i, j, 3) = 255; 
		end
	end
end

% green 
for i = 1 : 300 
	for j = 1 : 600 
		m = round(abs((i-300)/(j-1)), 2); 
		if m <= 0.15 
			im(i, j, 1) = 0; 
			im(i, j, 2) = 122; 
			im(i, j, 3) = 61; 
		end
	end
end

% displaying the matrix as an image 
figure, imshow(im); 
