function imout = grad_denoise(imin, width)
if size(imin, 3) == 3
    BW = rgb2gray(imin);
else
    BW = imin;
end

% fill small holes
filled = imfill(BW, 'holes');
holes = filled & ~BW;
bigholes = bwareaopen(holes, width);
smallholes = holes & ~bigholes;
BW2 = BW | smallholes;

imout = BW2;
end