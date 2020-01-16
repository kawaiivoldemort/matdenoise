function deviation = standard_deviation(matrix,mean,spatial_size)

deviation(:,:,1) = standard_deviation_sdim(matrix(:,:,1),mean(:,:,1),spatial_size);
deviation(:,:,2) = standard_deviation_sdim(matrix(:,:,2),mean(:,:,2),spatial_size);
deviation(:,:,3) = standard_deviation_sdim(matrix(:,:,3),mean(:,:,3),spatial_size);