% test fast hist
im3 = ones([10, 10, 3]);
for idx = 1:10
    im3(idx, :, :) = idx;
end
im3hist = fast_hist(im3, 10, 3);