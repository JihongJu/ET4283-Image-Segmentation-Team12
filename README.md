# ET4283-Image-Segmentation-Team12

## Usage

### Fast histogram using integral image

```
 % image :- image of interest (3d matrix)
 % nbin :- number of histogram bins (integer)
 % width :- the window size of neighorbood taken into account (must be ODD integer)
 
 % example
 imhist = fast_hist(image, nbins, width)
 
 % imhist :- the histogram in the upper neighbors and lower neighbors for each pixel (5D matrix with histogram counts for different bins as the fourth dimension, and upper neighbors or lower neighbors as the fifth dimension)

```

### Chi-square

```
imchi = chi_square(imhist)

% imchi :- the chi-square between distributions of the upper neighbor windows and lower neighbor windows (3D matrix)
```
