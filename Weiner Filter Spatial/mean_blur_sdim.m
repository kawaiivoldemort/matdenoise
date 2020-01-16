function image_blur = mean_blur_sdim(matrix,spatial_size)

image = matrix./(spatial_size^2);

xdim = size(image,1);
ydim = size(image,2);

shifts = idivide(spatial_size,2,'floor');

tempF = image;
tempB = tempF;

image_blur = tempF;

for y = 1:shifts
    tempF = [zeros(1,ydim);tempF(1:xdim-1,:)];
    tempB = [tempB(2:xdim,:);zeros(1,ydim)];
    image_blur = image_blur + tempF + tempB;
end

tempF = image;
tempB = tempF;

for x = 1:shifts
    tempF = [zeros(xdim,1) tempF(:,1:(ydim-1))];
    tempB = [tempB(:,2:ydim) zeros(xdim,1)];
    tempFD = tempF;
    tempFU = tempF;
    tempBD = tempB;
    tempBU = tempB;
    image_blur = image_blur + tempF + tempB;
    for y = 1:shifts
        tempFD = [zeros(1,ydim);tempFD(1:(xdim-1),:)];
        tempFU = [tempFU(2:(xdim),:);zeros(1,ydim)];
        tempBD = [zeros(1,ydim);tempBD(1:(xdim-1),:)];
        tempBU = [tempBU(2:(xdim),:);zeros(1,ydim)];
        image_blur = image_blur + tempFD + tempFU + tempBD + tempBU;
    end
end

end