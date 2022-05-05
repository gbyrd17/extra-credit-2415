function R = genradialharm(r,n,l)
    % we now generate the radial harmonic

    % we have to use a specific constant, and if we want our output to have good axis
    % scaling, we need to correctly define this quantity rather than setting it equal
    % to 1 like we often do 
    %hbar = 1.054e-34;
    %c = 3e8;
    %me = 9.109e-31;
    %mn = 1.67e-27;
    %alpha = 7.297e-3;
    %mu = (mn*me)/(mn+me);
    % calculate the constant
    %a = hbar/alpha*mu*c;
    a = 1;
    % for a hydrogen atom, we have Z=1 so we can just omit it from our calculation
    lagpoly = getlagpoly(n,l);
    if (n-l-1 == 0)
        lagpoly = 1;
    else
        lagpoly = lagpoly(2*r/(n*a));
    end
    R = sqrt((2/n*a).^3 * factorial(n-l-1) / (2*n*factorial(n+l))) .* exp(-r/(n*a)) .* (2*r/(n*a)).^l .* lagpoly;
end