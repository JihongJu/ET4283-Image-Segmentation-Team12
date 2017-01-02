function distance = chi2dist(X, Y)
    distance = sum((X - Y) .^ 2 ./ (X + Y), 4);
    is_nan = isnan(distance);
    distance(is_nan) = 0;
end