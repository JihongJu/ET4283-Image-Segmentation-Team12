# ET4283-Image-Segmentation-Team12

## Usage

### Fast histogram using integral image

```
 % image :- grayscale image of interest (2d matrix)
 % nbin :- number of histogram bins (integer)
 % width :- the window size of neighorbood taken into account (ODD integer)
 
 % example
 imhist = fast_hist(image, nbins, width)
 
 % imhist :- the histogram in the upper neighbors and lower neighbors for each pixel (4D matrix)

```

### Chi-square

```
imchi = chi_square(imhist)

% imchi :- the chi-square between distributions of upper neighbor windows and lower neighbor windows
```
