function imchi = chi_square(imhist)
% Compute gradient magnitude for each pixel
% Parameters:
   %    imhist: two rectangular box histograms,[M,N,nbins,2]
% Returns:
    %   imchi: chi-square distance between
    %          distributions of upper  and lower neighbor windows

    hist_g = imhist(:,:,:,1);
    hist_h = imhist(:,:,:,2);

    imchi = ((hist_g - hist_h).^2)./(hist_g + hist_h + eps);

    imchi = sum(imchi,3);

return

