function imout = grad_denoise(imin, width)
if size(imin, 3) == 3
    BW = rgb2gray(imin);
else
    BW = imin;
end

% % fill small holes
% filled = imfill(BW, 'holes');
% holes = filled & ~BW;
% bigholes = bwareaopen(holes, width);
% smallholes = holes & ~bigholes;
% figure(3);
% imshow(smallholes);
% % BW = BW | smallholes;
% BW(smallholes)=1;

% fill
BW = ~bwareaopen(~BW, width);
% % erode
% se = strel('disk',1);
% BW = imerode(BW, se);

imout = BW;
end