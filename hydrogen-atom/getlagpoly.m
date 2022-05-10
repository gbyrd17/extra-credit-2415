function lagpoly = getlagpoly(n,l) 
    %{
        Gets the Laguerre Polynomial at our given quantum numbers
        n and l (principal and angular momentum)

        https://en.wikipedia.org/wiki/Laguerre_polynomials#Generalized_Laguerre_polynomials
    %}

    alpha = 2*l + 1;    % setting up the alpha and n that the wikipedia page uses to calculate
    nn = n - l - 1;      % the legendre polynomial at the right degree

    % once again, we have a derivative, so we need a symbolic x
    syms x;
    rodrigues = exp(-x) * x^(nn+alpha);   % differential term of rodrigues formula

    if (nn == 0)
        dif = rodrigues;
    else
        dif = diff(rodrigues,nn);
    end

    a_lagpoly = (x^(-alpha) * exp(x)) / (factorial(nn)) * dif;

    lagpoly = matlabFunction(a_lagpoly);
end