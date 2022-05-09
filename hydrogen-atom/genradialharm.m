function R = genradialharm(r,n,l)
    % We now generate the Radial Harmonic

    % We have a universal constant for an atom of constant mass,
    % so we set it equal to 1 
    a = 1;
    % for a hydrogen atom, we have Z=1 so we can just omit it from our calculation,
    lagpoly = getlagpoly(n,l);
    if (n-l-1 == 0)
        lagpoly = 1;
    else
        lagpoly = lagpoly(2*r/(n*a));
    end
    R = sqrt((2/n*a).^3*factorial(n-l-1)/(2*n*factorial(n+l)))...
        .*exp(-r/(n*a)).*(2*r/(n*a)).^l.*lagpoly;
end