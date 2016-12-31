img= readim('cermet');
seed = minima(imhist);
watershed = waterseed(seed,img,1);
overlay(img,watershed)