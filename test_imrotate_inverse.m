% test imrotate inverse
imodd = magic(15);
imoddrot = imrotate(imodd, 45);
imoddrec = imrotate_inverse(imoddrot, imodd, 45);


imeven = magic(10);
imevenrot = imrotate(imeven, 45);
imevenrec = imrotate_inverse(imevenrot, imeven, 45);

figure;
imshow(imodd/250);
figure;
imshow(imoddrec/250);