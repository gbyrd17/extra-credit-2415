function sphericalharm = getsphereharm(theta,phi,m,l) 
    %{
        constructs the spherical harmonics given the 
        magnetic quantum number and the angular momentum
	    quantum number
    %}

	P = getlegpoly(m,l);
    if (l == 0)
        sphericalharm = sqrt(((2*l+1)/(4*pi)).*(factorial(l-abs(m))...
            /factorial(l+abs(m)))).*exp(1i*m*phi);
    else
        sphericalharm = sqrt(((2*l+1)/(4*pi)).*(factorial(l-abs(m))...
            /factorial(l+abs(m)))).*exp(1i*m*phi).*P(cos(theta));
    end
end
