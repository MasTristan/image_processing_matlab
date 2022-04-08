function y = moy(x,s)
    taille = size(x);
    pas = (s-1)/2;
    for i = 1:taille(1)
        for j=1:taille(2)
            imin=max(i-pas,i);
            imax = min(i+pas,taille(1));
            jmin = max(j-pas,1);
            jmax = min(j+pas,taille(2));
            moy = mean(mean(double(x(imin:imax,jmin:jmax))));
            y(i,j) = uint8(moy);
        end
    end        
end

