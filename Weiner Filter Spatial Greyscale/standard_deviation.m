function deviation = standard_deviation(matrix,mean,spatial_size)

image = abs(matrix./(spatial_size^2) - mean./(spatial_size^2)).^2;

xdim = size(image,1);
ydim = size(image,2);

shifts = idivide(spatial_size,2,'floor');

tempF = image;
tempB = tempF;

deviation = tempF;

for y = 1:shifts
    tempF = [zeros(1,ydim);tempF(1:xdim-1,:)];
    tempB = [tempB(2:xdim,:);zeros(1,ydim)];
    deviation = deviation + tempF + tempB;
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
    deviation = deviation + tempF + tempB;
    for y = 1:shifts
        tempFD = [zeros(1,ydim);tempFD(1:(xdim-1),:)];
        tempFU = [tempFU(2:(xdim),:);zeros(1,ydim)];
        tempBD = [zeros(1,ydim);tempBD(1:(xdim-1),:)];
        tempBU = [tempBU(2:(xdim),:);zeros(1,ydim)];
        deviation = deviation + tempFD + tempFU + tempBD + tempBU;
    end
end

end