I = zeros(600, 800, 3); 
% here image is of class ‘uint8’, the range of values 
% that each colour component can have is [0 – 255] 
I= uint8(I); 

%Painting the Red Strip 
I(1:100, :, 1)=165; 
I(1:100, :, 2)=25; 
I(1:100, :, 3)=49; 

%Painting the White Strip 
I(101:200, :, 1)=244; 
I(101:200, :, 2)=245; 
I(101:200, :, 3)=248; 

%Painting the Blue Strip 
I(201:400, :, 1)=45; 
I(201:400, :, 2)=44; 
I(201:400, :, 3)=72; 

%Painting the white Strip 
I(401:500, :, 1)=244; 
I(401:500, :, 2)=245; 
I(401:500, :, 3)=248; 

%Painting the Red Strip 
I(501:600, :, 1)=165; 
I(501:600, :, 2)=25; 
I(501:600, :, 3)=49; 

%Show the image formed 
figure;imshow(I); 
