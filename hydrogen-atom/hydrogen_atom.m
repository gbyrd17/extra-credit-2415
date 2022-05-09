% Graham Byrd

% In this script I am attempting to plot the n orbitals of the hydrogen atom 
% acounting for both the l and m quantum number.

% The functions included with this file are the main bulk of the computation, 
% only variable initialization and plotting takes place in this script.

%% Variable initialization

grid = linspace(-50,50,1e2);  
% the 50's can be changed to fit the plot better, but anything beyond 100
% steps between them uses too much processing power in calculation
  
[x, y, z] = meshgrid(grid,grid,grid);
% mapping vars to x,y,z

% spherical transform
r = sqrt(x.^2 + y.^2 + z.^2);
theta = acos(z./r);
phi = atan2(y, x);

% init vars
n = 4;
l = 3;
m = 0;

% we make the harmonic part
Y = gensphereharm(theta,phi,m,l);

% now we make our radial part
R = genradialharm(r,n,l);

% combine the parts
psi = R .* Y;


%% Plotting

% psi is a wavefunction, so we need to plot the probability, not just the
% psi
figure()
isosurface(psi.^2,1e-5,sign(psi))   % isovalue set to 1e-5, just works the best,
                                    % and i dont get any improvement by lowering it.
axis equal % ensures axis have same unit length
axis vis3d % freezes aspect ratio, allows the plot to look like the actual orbitals
