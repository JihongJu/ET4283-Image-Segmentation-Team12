function imgrad = oriented_grad(im, orient, width, nbins)
    % Compute oriented gradient for each pixel
   % Parameters:
   %    im: a gray scale image, matrix of size MxN
   %    orient: angle of orientation to compute, int
   %    width: width of windows of interest, int
   %    nbins: number of bins, int
   % Returns:
   %    imgrad: gradient map, matrix of size MxN
   
   % rotate the image
   imrot = imrotate(im, angle);
   
   % fast hist
   imhist = fast_hist(imrot, nbins, width);
 
   
   % compute chi-square
   imchi = 0;
   
   % smoothing
   imsmooth = 0;
   
   % reverse rotating
   imgrad = 0;
   

end