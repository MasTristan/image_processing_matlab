function y = erosion(x,s)
taille = size(x);
pas = (s-1)/2;
for i = 1:taille(1)
    for j = 1:taille(2)
        imin = max(i-pas,1);
        imax = min(i+pas,taille(1));
        jmin = max(j-pas,j);
        jmax = min(j+pas,taille(2));
        
        temp = min(min((double(x(imin:imax,jmin:jmax)))));
        y(i,j) = (temp);
    end
end
       
end