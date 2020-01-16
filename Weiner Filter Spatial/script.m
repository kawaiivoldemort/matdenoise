pkg load image
image = imread('sample_image.jpg');
noisy_image = imnoise(image,'gaussian');
subplot(2,2,1);imshow(image);
subplot(2,2,2);imshow(noisy_image);
subplot(2,2,3);imshow(mean_blur(noisy_image,5));
subplot(2,2,4);imshow(weiner_filter(noisy_image,5,2));