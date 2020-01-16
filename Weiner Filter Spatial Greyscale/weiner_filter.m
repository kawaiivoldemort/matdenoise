%And here's our test code for Weiner Filter on Spatial Basis

function restored = weiner_filter(matrix,spatial_size,noise_power)

%The mean is the blurry version of our image we use to compute signal_power^2 + noise_power^2
mean = mean_blur(matrix,spatial_size);
%This is our estimate of signal_power^2 + noise_power^2
sdeviation = standard_deviation(matrix,mean,spatial_size);
restored = ones(size(sdeviation,1),size(sdeviation,2)).*(-noise_power);
restored = restored./sdeviation;
restored = restored.*imabsdiff(mean,matrix);
restored = mean + restored;

end