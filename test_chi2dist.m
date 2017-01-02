imhist = ones(2,2,1,2,2);
imhist(:,:,:,:,2)=2;
% imhist = zeros(2,2,1,2,2);
imchi = chi2dist(imhist(:,:,:,:,1),imhist(:,:,:,:,2));