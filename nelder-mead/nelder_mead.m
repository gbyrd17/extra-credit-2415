% In this file, I will be attempting to write a Nelder-Mead algorithm that optimises the Ackley Function, found in the link below:
% https://en.wikipedia.org/wiki/Ackley_function
%
% There is an accompanying PDF to this solution that details my thought processes and the ideas behind Nelder-Mead and its implementation 
% on the Ackley Function
%
% This code is NOT general, and is set up specifically for optimizing the Ackley function
%

% lets first define the function we want to work with
fn = @(x, y) - 20*exp(-0.2*sqrt(0.5*(x.^2 + y.^2))) - exp(0.5*(cos(2*pi*x) + cos(2*pi*y)))+ exp(1) + 20;

plotx = linspace(-5,5,1000)
ploty = linspace(-5,5,1000)'
plotz = fn(plotx,ploty)

plt1 = pcolor(plotx,ploty,plotz)
set(plt1,'LineStyle','none')
hold on

% from the wikipedia article we know that our optimum point is f(0,0) = 0:
compare_x = 0;
compare_y = 0;
compare_f = 0;

% now, lets define variables we know:
n = 2;       % function is of 2 variables
step = [1, 1];   % define a step size to generate a simplex from
xy0 = [0, 0];       % define an initial point

simplex0 = zeros(3,2);
[simplex0(1,:), simplex0(2,:), simplex0(3,:)] = getsimplex(xy0, step)

tempx = simplex0(:,1)
tempy = simplex0(:,2)
convhull(simplex0,'k')


