function Y = gensphereharm(theta, phi, m, l)
    %{
        This does our final calculation, and generates the spherical
        harmonic values for our input variables.
            
        m can be = -l to l, so we have a few cases which are    
        covered in the below linked part of the wikipedia article:
        https://en.wikipedia.org/wiki/Spherical_harmonics#Real_form 
        
        The third listed case seems much simpler to code, so we are using that.
    %}

    if (m < 0)
        Y = sqrt(2) * (-1)^m * imag(getsphereharm(theta,phi,abs(m),l));
    elseif (m == 0)
        Y = getsphereharm(theta,phi,m,l);
    else
        Y = sqrt(2) * (-1)^m * real(getsphereharm(theta,phi,m,l));
    end
end
