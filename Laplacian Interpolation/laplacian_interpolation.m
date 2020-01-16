%Our Test Code of Laplacian Interpolation for Interpolating Corrupted images using the Mean Value Theorem assunming Laplacian to be zero

function restored = laplacian_interpolation(matrix)

xdim = size(matrix,1);
ydim = size(matrix,2);
%Here find the pixels corrupted assunming they have a value of 255
deleted = matrix - 254*ones(xdim,ydim);
%We get the mean to interpolate with
mean = idivide(sum(sum(matrix)) - 127*sum(sum(deleted)),(xdim*ydim - 0.5*sum(sum(deleted))));
matrix = matrix - (255*ones(xdim,ydim) - mean).*(deleted);
restored = matrix./4;
%We get the amount to restore from the neighborhood
restored = [mean*ones(1,ydim);restored(1:xdim-1,:)] + [restored(2:xdim,:);mean*ones(1,ydim)] + [mean*ones(xdim,1) restored(:,1:(ydim-1))] + [restored(:,2:ydim) mean*ones(xdim,1)];
%And we restore
restored = restored.*deleted;