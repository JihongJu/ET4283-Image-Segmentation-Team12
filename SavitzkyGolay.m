function  imsmooth = SavitzkyGolay(imchi,framelen)
% Spatial smoothing of oriented gradient output.
    % Enhance local maxima and smooth out multiple detection peaks 
    % in the direction orthogonal to angle theta 
% Parameters:
   %    imchi: chi-square distance
   %    framelen:  filter length, (odd, >=5)
% Returns:
   %   imsmooth: smoothed image
    
    order = 2;
    b = sgolay(order,framelen); %  2D filter
    %two 1D second-order Savitzky-Golay filtering
    ftx = b((framelen+1)/2,:);
    fty = ftx';

    % apply two times
    imsmooth = imfilter(imchi,ftx);
    imsmooth = imfilter(imsmooth,fty);

end
