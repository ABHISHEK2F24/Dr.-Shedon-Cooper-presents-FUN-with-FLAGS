% MATLAB code to draw Kuwait flag 

% initialising a zero matrix of 300X500X3 
I=uint8(zeros(300, 500, 3)); 

% green horizontal bar 
I(1:100, 101:500, 1)=0; 
I(1:100, 101:500, 2)=122; 
I(1:100, 101:500, 3)=61; 

% white horizontal bar 
I(101:200, 101:500, :)=255; 
%red bar 
I(201:300, 101:500, 1)=206; 
I(201:300, 101:500, 2)=17; 
I(201:300, 101:500, 3)=38; 

% green upper triangle 
for i = 1:100 
	for j=1:100 
		if i<=j 
			I(i, j, 1)=0; 
			I(i, j, 2)=122; 
			I(i, j, 3)=61; 
		end
	end
end

% red lower triangle 
for i = 201:300 
	for j = 1:100 
		if (i-200)+j>=101 
			I(i, j, 1)=206; 
			I(i, j, 2)=17; 
			I(i, j, 3)=38; 
		end
	end
end

% displaying the matrix as image 
figure, imshow(I); 
