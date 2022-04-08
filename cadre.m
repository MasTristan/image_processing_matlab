function cadre(x)
info = regionprops(x,'Boundingbox') ;
figure(13);
imshow(x);title('objets encadres');
hold on
for k = 1 : length(info)
     BB = info(k).BoundingBox;
     rectangle('Position', [BB(1),BB(2),BB(3),BB(4)],'EdgeColor','g','LineWidth',1) ;
end