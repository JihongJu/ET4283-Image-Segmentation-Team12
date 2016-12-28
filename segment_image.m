function labelmap = segment_image(filename)
    im = imread(filename);
    imshow(im);
    
    % compute gradient map
    gradmap = oriented_grad(im, 90, 5, 10);

    % find local minimum
    seeds = 0;
    
    % watershed segmentation
    labelmap = gradmap;
end