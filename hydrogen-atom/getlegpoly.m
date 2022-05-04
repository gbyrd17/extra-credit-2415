function [lege_poly, a_lege_poly] = getlegpoly(m, l)
	% Gets the legendre polynomial for our given quantum number
	% m and l (magnetic and angular quantum)
	%
	% https://en.wikipedia.org/wiki/Associated_Legendre_polynomials

	syms x;	 	% set up symbolic variable x
	rodrigues = (x^2 - 1)^l; 	% set up differentiated part of rodrigues formula 

	differ = diff(rodrigues,l+m); % see rodrigues formula on wikipedia

	a_lege_poly = (((-1)^m)/(2^l factorial(l)))*((1-x^2)^(m/2))*differ;

	lege_poly = matlabFunction(final_symbolic);
end