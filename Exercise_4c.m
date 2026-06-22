%% Explanation of exercise 4c

% In order to understand what needs to be done for exercise 4c (and 4d) we
% start with a slightly simpler situation. However, before we do that we
% remind ourselves on how matrices are turned into arrays by Matlab.

%% Reminder about converting matrices to arrays

% We start with a reminder on how matrices are converted to arrays in
% Matlab.

clear all; close all
% We first create a test matrix:

tm = eye(5);
tm(5,:) = [5,10,15,20,25];

% We output this to the screen

tm

%% The colon operator

% We now convert this to an array using the colon operator and check that
% in which order this is done by looking at the elements:

tm2 = tm(:)

% Note that the array is created by putting columns (and not rows) after
% each other. 
% 
%% Creating a meshgrid for testing
% 
% We now turn to the exercise.
% 
% To begin with, we use the following rectangular grid of points:

clear all; close all;

dx = 1; dz = 0.5;

x = -2 : dx : 2;
z = -4 : dz : -2;

[xx, zz] = meshgrid(x,z)

% Note how this is simplified with respect to 4c: the grid is 2D and the
% number of points is much smaller. The basic principle is of course the
% same.

%% Computation of the distances from the center

% Now we want to find all the points on the meshgrid that have a distance 1.2 
% from the center of the grid (note that the centre is (0,-3)). (1.2 is
% just used as an example; there is nothing special about this number)
%
% We first compute the distance of all points to the center of the grid:

x0 = 0; z0 = -3;  % the coordinates of the centre point

rr = sqrt( (xx-x0).^2 + (zz-z0).^2 ) % matrix rr contains the distances

% It is useful from the output of rr, which is quite small and therefore
% manageable, to check whether these values make sense.

%% Finding the points with a radius 1 from the center

% In the next step we want to identify all points that have a distance 1.2 from the
% center of this grid. We can use the find command for this:

dist = 1.2; 

pts = find(rr<dist)

% At first sight, the output might look a bit strange. However, it is
% quite logical. Matlab first transforms the matrix rr to a 1D array (just like
% we could do with the command dist(:) as we saw above). Then Matlab
% outputs the array indices for which the condition rr<dist holds. In this
% case these are 7-9, 11-15 and 17-19 as you can easily check by looking at
% the values of the rr matrix (see the previous section).

%% Using the selected points to do computations

% Now that we have the indices for all points within a circle 1.2 from the
% center of the grid we can do computations with just these points.

% For example we can compute the distance of all these points to the origin
% by selecting the corresponding indices using the array pts:

x_orig = 0;
z_orig = 0;

rdist = sqrt( (xx(pts)-x_orig).^2 + (zz(pts)-z_orig).^2)

% You can verify, for example, that the point (0,-3), which is the 
% 13th point in the array, has distance 3 from the origin, as expected.

% We now have almost all ingredients to do exercise 4c: the computations of
% the distances are as above. A similar thing can be used to compute the zz
% coordinates. Then these need to be put together to get the (vertical)
% displacement from each grid point and then these need to be summed to get
% the total vertical displacement.
%
%% Two final remarks
%
% Firstly, what we have done in these exercises on magma deformation,
% from a mathematical point of view, is the computation of 1D integrals 
% (in the case of a line source), 2D integrals (in the case of a sill) and
% 3D integrals (in the case of a cubic or spherical magma chamber). The 
% mathematical aspects of 2D and 3D integrals are treated in MAT112.
%
% Secondly, as mentioned in class, we will continue these exercises on magma 
% deformation in GEOV265. In that class, the results of 4c and 4d will be
% a starting point for comparison of computational deformation data with 
% real deformation measurements at Grimsvötn volcano. These are then used to determine
% properties of the magma chamber below Grimsvötn (including its location
% and size).