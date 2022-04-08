clear all
close all

% 1 pixel = 0.0425cm

%Ouverture de l'image originale
image_rgb=imread('img2.bmp');
figure(1);
imshow(image_rgb); 
title('Etape 0 - Image initiale');

%Passage en niveau de gris
img_ndg=rgb2gray(image_rgb);
figure(2);
imshow(img_ndg);title('Etape 1 - Image en niveau de gris');colorbar

%moyennage
img_moy=moy(img_ndg,5);
figure(3);
imshow(img_moy);title('Etape 2 - Image moyennee');
figure(4);
histogram(img_moy);



%seuillage
img_seuil=255*(1-((img_moy)>200));
figure(5);
imshow(img_seuil);title('Etape 3 - Image seuillee');colorbar

%dilatation/erosion

img_dilat=erosion(dilatation(img_seuil,3),3);
figure(6);
imshow(img_dilat);title('Etape 4 - Image dilatee et erodee');

%segmentation
img_seg=segmentation(img_dilat);

 % pour les deux fonctions suivantes il est primordial d'utiliser l'image segmentee car la fonction regionprops doit
 % detecter une valeur de pixels differente pour chaque objet


%cadre_droit
cadre(img_seg);

                   

%cadre_mini
cadremini(img_seg); 

