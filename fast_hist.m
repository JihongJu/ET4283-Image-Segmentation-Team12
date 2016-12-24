function imhist = fast_hist(im, nbins, width)
% Perform efficient histogram
% Parameters:
%   im: an image, matrix of size (M,N)
%   nbins: number of bins, int
%   width: width of neighbouring windows, int
% Returns:
%   imhist: histogram, matrix of size (M,N,nbins,2)
    
    % init 
    M = size(im,1);
    N = size(im,2);
    imhist = zeros([M,N,nbins,2]);
    imhist = zeros([M,N,nbins]);
    
    min_value = double(min(min(im)));
    max_value = double(max(max(im)));
    intervals = linspace(0, 1+1e-10, nbins+1);
   
    for idx = 1:numel(intervals)-1
        % binary
        bitmap = intervals(idx) <= im & im < intervals(idx+1);
        % integral images
        imintegral = cumsum(cumsum(bitmap,1),2);
        % count neighborhood frequency
        for hoi = [1,2]
            imhist(:,:,idx,hoi) = hist_count(imintegral, width, hoi);
        end
    end 
end