# ET4283-Image-Segmentation-Team12

## Usage

### Segment image

```
L = segment_image('img/aeroplane.jpg');
```


### Oriented gradient

```
ograd = oriented_grad(image, angle, width, nbins);
```

### Fast histogram using integral image

```
 % image :- image of interest (3d matrix)
 % nbin :- number of histogram bins (integer)
 % width :- the window size of neighorbood taken into account (must be ODD integer)
 
 % example
 imhist = fast_hist(image, nbins, width);
 
 % imhist :- the histogram in the upper neighbors and lower neighbors for each pixel (5D matrix with histogram counts for different bins as the fourth dimension, and upper neighbors or lower neighbors as the fifth dimension)

```

### Chi-square distance

```
imchi = chi2dist(imhist(:,:,:,:,1),imhist(:,:,:,:,2));

% imchi :- the chi-square between distributions of the upper neighbor windows and lower neighbor windows (3D matrix)
```
