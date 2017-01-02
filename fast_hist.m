function imhist = fast_hist(im, nbins, width)
% Perform efficient histogram
% Parameters:
%   im: an image with K channels, matrix of size (M,N,K)
%   nbins: number of bins, int
%   width: width of neighbouring windows, int
% Returns:
%   imhist: histogram, matrix of size (M,N,nbins,2)
    
    % init 
    M = size(im,1);
    N = size(im,2);
    K = size(im,3);
    imhist = zeros([M,N,K,nbins,2]);
    
    % normalization
%     imnorm = double(im) ./ double(repmat(max(max(im)), [M,N]));
    imnorm = double(im) / 255;
    
    % calculate interval
    intervals = linspace(0, 1+1e-10, nbins+1);
   
    for idx = 1:numel(intervals)-1
        % binary
        bitmap = intervals(idx) < imnorm & imnorm <= intervals(idx+1);
        % integral images
        imintegral = cumsum(cumsum(bitmap,1),2);
        % count neighborhood frequency
        for hoi = [1,2]
            imhist(:,:,:,idx,hoi) = hist_count(imintegral, width, hoi);
        end
    end 
end