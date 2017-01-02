% test hist_count.m
im3 = ones([10,10,3]);
im3cumsum = cumsum(cumsum(im3, 1), 2);
im3count_up = hist_count(im3cumsum, 5, 1);
im3count_lo = hist_count(im3cumsum, 5, 2);
im1 = ones([10,10]);
im1cumsum = cumsum(cumsum(im1, 1), 2);
im1count_up = hist_count(im1cumsum, 5, 1);
im1count_lo = hist_count(im1cumsum, 5, 2);
