function restored = weiner_filter(matrix,spatial_size,noise_power)

mean = mean_blur(matrix,spatial_size);
sdeviation = standard_deviation(matrix,mean,spatial_size);
restored = ones(size(sdeviation,1),size(sdeviation,2)).*(-noise_power);
restored = restored./sdeviation;
restored = restored.*imabsdiff(mean,matrix);
restored = mean + restored;

end