function imgrad = oriented_grad(im, angle, width, nbins)
    % Compute oriented gradient for each pixel
   % Parameters:
   %    im: a gray scale image, matrix of size MxN
   %    angle: angle of orientation to compute, int
   %    width: width of windows of interest, int
   %    nbins: number of bins, int
   % Returns:
   %    imgrad: gradient map, matrix of size MxN
   
   % rotate the image
   imrot = imrotate(im, angle);
   
   % fast hist
   imhist = fast_hist(imrot, nbins, width);
 
   
   % compute chi-square distance
   imchi = chi2dist(imhist(:,:,:,:,1), imhist(:,:,:,:,2));
%    figure;
%    imshow(imchi/max(max(max(imchi))));

   %% compute chi-square
   %imchi = chi_square(imhist);
   
   %% smoothing 
   imsmooth = imchi;
   % TODO try out the influence of smoothing
   %imsmooth = SavitzkyGolay(imchi, 5);
   
   % reverse rotating
   imgrad = imrotate_inverse(imsmooth, im, angle);

end
