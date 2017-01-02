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
   size(imhist)
%    figure;
%    imshow(imhist(:,:,:,3,1)/max(max(max(imhist(:,:,:,3,1)))));
%    figure;
%    imshow(imhist(:,:,:,3,2)/max(max(max(imhist(:,:,:,3,2)))));
%    figure;
%    imshow(imhist(:,:,:,3,2)-imhist(:,:,:,3,1));
   % smoothing
   imsmooth = imchi;
%    figure;
%    imshow(imchi/max(max(max(imchi))));
   % reverse rotating
   imgrad = imrotate_inverse(imsmooth, im, angle);

end