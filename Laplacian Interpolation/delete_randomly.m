function deleted = delete_randomly(matrix,percent)

xdim = size(matrix,1);
ydim = size(matrix,2);

deleted = matrix;

temp = randperm(xdim*ydim);

deleted(temp(1:idivide(xdim*ydim*percent,100))) = 255;