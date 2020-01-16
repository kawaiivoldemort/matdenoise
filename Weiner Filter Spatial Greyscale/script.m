pkg load image
image = rgb2gray(imread('sample_image.jpg'));
noisy_image = imnoise(image,'gaussian');
subplot(1,3,1);imshow(image);
subplot(1,3,2);imshow(noisy_image);
subplot(1,3,3);imshow(weiner_filter(noisy_image,5,2));