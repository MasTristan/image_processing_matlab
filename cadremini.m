function y=cadremini(x)

img = x;

info = regionprops(img, 'all');

figure(14)
imshow(img);title('cadres orientes');
hold on;
taillemin = 25; % ignorer petites zones et bruit 
angles = [];
   
for k = 1:length(info)
     % on recupere les proprietes de chaque zone detectee par regionprops   
    w = info(k).MajorAxisLength;
    h = info(k).MinorAxisLength;
    x = info(k).Centroid(1) - w/2;
    y = info(k).Centroid(2) - h/2;
    alpha = info(k).Orientation;

    
    if h < taillemin % on passe les zones de la taille reglee plus tot
        continue;
    end
    
    angles = [angles alpha];
    ps = polyshape([x, x, x+w, x+w], [y, y+h, y+h, y]);
    ps2 = rotate(ps, -alpha, [x+w/2 y+h/2]);
    plot(ps2, 'EdgeColor','g', 'FaceColor','none', 'LineWidth',1);
end