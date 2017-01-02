function imrec = imrotate_inverse(imrot, imorig, angle)
% Perform the inverse rotating of the rotated image and pick the region of 
% the same size as the origin image. AlignING it.............
% Parameters:
%   imrot :- rotated image
%   imorig :- origin image
%   angle :- rotated angle
    if rem(angle, 360) == 0
        imrec = imrot;
    else
        M = size(imorig, 1);
        if rem(M, 2) == 0
            p = floor(M/2) - 1;
        else
            p = floor(M/2);
        end
        N = size(imorig, 2);
        if rem(N, 2) == 0
            q = floor(N/2) - 1;
        else
            q = floor(N/2);
        end
        imrev = imrotate(imrot, -angle);
            if rem(angle, 90) == 0
                imrec = imrev;
            else
                imrec = imrev(...
                    floor(end/2)-p : floor(end/2)-p+M-1, ...
                    floor(end/2)-q : floor(end/2)-q+N-1, ...
                    :);
            end
    end
end