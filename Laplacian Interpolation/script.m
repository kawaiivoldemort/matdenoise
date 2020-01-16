pkg load image
image = rgb2gray(imread('sample_image.jpg'));
modified = image;
deleted = delete_randomly(modified,50);
restored = laplacian_interpolation(deleted);
subplot(2,2,1);imshow(image);
subplot(2,2,2);imshow(deleted);
subplot(2,2,3);imshow(restored);
subplot(2,2,4);imshow(mean_blur(restored,5),[0,200]);