function sphericalharm = getsphereharm(theta,phi,m,l) 
	% constructs the spherical harmonics given the 
	% magnetic quantum number and the angular momentum
	% quantum number
	P = a_lege_poly(m,l)
	A1 = ((-1)^m)*sqrt(((2*l+1)/(4*pi)).*(factorial(l-abs(m))/factorial(l+abs(m)))); 
	A2 = exp(1i*m*phi).*P(cos(theta)); 	%split the coefficients up to make neater
	Y = A1*A2
end
