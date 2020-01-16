function image_blur = mean_blur(matrix,spatial_size)

image_blur(:,:,1) = mean_blur_sdim(matrix(:,:,1),spatial_size);
image_blur(:,:,2) = mean_blur_sdim(matrix(:,:,2),spatial_size);
image_blur(:,:,3) = mean_blur_sdim(matrix(:,:,3),spatial_size);