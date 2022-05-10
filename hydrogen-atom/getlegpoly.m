function legpoly = getlegpoly(m, l)
	%{ 
        Gets the legendre polynomial at our given quantum numbers
        m and l (magnetic and angular momentum)
	
        https://en.wikipedia.org/wiki/Associated_Legendre_polynomials
	%} 

	syms x;	 	% set up symbolic variable x
	rodrigues = (x^2 - 1)^l; 	% set up differentiated part of rodrigues formula 
	
	if (l+m == 0)
		differ = rodrigues;
	else
		differ = diff(rodrigues,l+m); % see rodrigues formula on wikipedia
	end

	a_legpoly = (((-1)^m)/(2^l*factorial(l)))*((1-x^2)^(m/2))*differ;
    
	legpoly = matlabFunction(a_legpoly);
end