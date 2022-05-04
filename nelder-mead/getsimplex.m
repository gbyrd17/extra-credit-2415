function [pt1, pt2, pt3] = getsimplex(xy0, step) 
    % takes a start point (centroid) and a step size and generates our initial simplex
    pt1 = xy0 - step;
    pt2 = xy0 + [step(1), 0];
    pt3 = xy0 - [0, step(2)];
end