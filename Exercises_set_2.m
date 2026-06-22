%% Answers to excerise set 2 geov112 - Tiffany


%% Oppgave 1 - Computing with vectors in matlab

% 1a) 
    a = [4 2 8];
    
    b = [-5 -1 0];
    
    sum_ab = a + b 
    
    % Beacuse these number are relativ small an easy to handle, I can do
    % some quick mental calculation. I can see that I will
    % expect -5+4 = -1, -1+2 = 1 and 0 + 8 = 8. This correspond to the array
    % [-1 1 8], as i fot in matlab
    
% 1b)

    sum_a = sum(a)

    sum_b = sum(b)
    
     % the number are easy to sum in the head. i know that 2+8 is 10, and
     % adding 4 makes the sum for array "a" 14. this is also what i got on
     % matlab
     
     % one of the numbers in array "b" is zero. i then can do some quick
     % mental calculations do find out that -5 + (-1) is -6.  this is also
     % what i got in matlab
% 1c)
 
   min_a =  min(a)

   min_b = min(b)
    
   % the command min gives out the minimum value that exist in the arrays.
   % I can see that for "a" the number 2 is less then 4 and 8. For the
   % array "b" i can also see that -5 is less then -1 and 0. this aligns
   % with the answer i got on matlab
   
% 1d) 

   transpose_b = b'
  
     % the transpose commad "'" will make the array "b" go from a 1 x 3
     % matrix to a 3 x 1 matrix. That is also what i got on matlab
  
% 1e)

   a2 = 4 * a
   
   b2 = -3 * b
   
   % I can quick do some mental calulations. when scalar muliplying, you
   % are multiplying each component. i muliply 4 with every component in
   % array "a" and -3 with every component i "a"
   
   vector1 = a2./ b2
   
   % I am dividing the to new arrays compoent wise. For the first element i
   % expect somthing around 1 - and somthing becuse 16/15 is close to 1/1.
   % For 8/3 i will expect something a little less then 3, becuse i know
   % that 9/3 is 3. For the last component i got infity, that make sense
   % becuse there is somthing divided by 0
   
% 1f) 

   exponent_b = exp(b)
   
   % this command take the value as a exponent for "e". The output make sense
   % becuse I expect somthing very small for e^-5. that is somthing i cant
   % calculate in my head, but i know it's a small number sins "e" is equla
   % to 2.718... for the next value I 1/ "e" will agian be somthing small,
   % but not as small as the first. The las value is 1, and that i know is
   % right becuse "e"^0 is "1". anything powerd by 0 is 1
   
% 1g)
    sqr_a = a.^2
    
    % This answer make sense becuse i know that 4*4 is 16, 2*2 is 4 and
    % taht 8*8 is 64.
    
% 1h)

    innerproduct_a = dot(a,b)
    
    % I can do some quick calculation my self to check if the answer make
    % sense. For the dot product I will multiply the to corresponing
    % elements and add them together. -5*4 is -20, 2*-1 is -2 and 8*0 is 0.
    % I can then see that -20 + (-2) is -22

%% Oppgave 2 - Creating and manipulating arrays

% 2a) 
    % the linespace command starts with the min value, then the max value,
    % and the number of ponits you want the array to have.
    % It can be writtn like this:
        example1 = linspace(5, 25, 5);
    % The output of this array would then be [5 10 15 20 25]


    % the other way to make an array is by starting with a min value,
    % then a dx value that gives the spacing, and last the max value. 
    % with this array we dont know how many elements we'll have, but we
    % know how much each elements jumps
    % it can be written as:
        example2 = [7:3:25];
    % The output of this array would be [7 10 13 16 19 22 25]  

% 2b)
    % asume I know the min value, the spacing and number of points. I dont
    % have the max value, but can still write the array like this:

    % linspace(min,(min+intervals*dx),n)
    % [min:dx:(dx*intervals)-min]
    % Where intervals ar given as elements-1

    
% 2c) 

    min = -10;
    dx = 2;
    elements = 46;

    array_c = linspace(-10, min+(2*(elements-1)), elements)
    array_c2 = [min:dx:(dx*elements-1)-abs(min)]

     % Did not know wich method to use. so i wrote bolth and are showing
     % the output so that we can see that it gives us the same array
    
% 2d)

    array_d= linspace(-2, 9, 451);
    
% 2e)

    array_e = [23:4.5:125];
    

% 2f)
  
    num_el = numel(array_e)
    
% 2g)

    array_g = array_d(7:12);
        
% 2h)

    array_h = [array_d(150:181), array_d(201:2:205)];
    
% 2i) 

    array_i1 = array_d(10:51);

    array_i2 = array_d(130:171);
 
    array_i3 = array_i1 + array_i2;
  
% 2j) 

    array_j1 = array_i1 + 26;

    array_j2 = array_i2 - 39;

% 2k) 

    divide_i = array_i1./ array_i2;

% 2l) 
    x = linspace(-12,12,131);
    
    y = (x.^2+1).^(-3/2);
   

%% Oppgave 3 - Exercises 1-4 chapter 2

% 3a)
    A = [-1 7 3 2];

    % Using the command dot, and then take the square of the dot product 
    % to calculate the magnitude
 
    Mag_A = sqrt(dot(A,A)) 

    clear all;

% 3b)

    A = [-1+i 7i 3 -2-2i];

    % using the command norm to calculate the magnitude

    Mag_A = norm(A)

    clear all;

% 3c)
    
    col_vector = [1;2;3]
    row_vector = [1 2 3]
    
    
    
% 3d)

    A = [1;2;3]; B =[4;5;6]; 

    array_product = A.* B
    
    
%% Oppgave 4 - Exercises 1-3 chapter 3

% 4a)/ 4b) 

    x = [0:0.1:1];
    y = tan(x);
    y1= sin(x);
    
    
    figure(1)

    plot(x,y, 'b-x', x,y1, 'r-->')

    xlabel('x-axis')
    ylabel('y-axis')
    title('oppgave 4a) & 4b)')
    grid on
    
clear all;


% 4c) 

    P = [-pi: 0.2: pi];
    x_100 = linspace(-pi,pi,100);
    x_50 = linspace(-pi, pi, 50);

    
 %% Oppgave 5 - Plotting
 
 % 5a)
 
    x = linspace(-5, 5, 80);
 
    z = 1./((x.^2 + 1).^(3/2));
    z1 = x./ ((x.^2 +1).^(3/2));
 
    figure(2)

    plot (x,z, 'c-')
    hold on
    plot (x,z1, 'm--')
    grid on
    title('Plotting - oppgave 5 a)')
    xlabel('x-axsis')
    ylabel('y-axis')
    legend

 % 5b)
    
    figure(3)
   
    subplot(1,2,1); 
    plot (x,z, 'c-')
    grid on
    title('Plotting - oppgave 5 b)')
    xlabel('x-axsis')
    ylabel('y-axis')
    
    subplot(1,2,2);
    plot (x,z1, 'm--')
    grid on
    title('Plotting - oppgave 5 b)')
    xlabel('x-axsis')
    ylabel('y-axis')

 % 5c) 
    
    % For the function 1/(x^2+1)^3/2 we will see that the bigger x absolute
    % value given, the smaller is output becomes
    % the higest value will be 1, when we put in 0 for the x. 1/(0^2+1)^3/2
    % we will en up with 1/(1)^3/2 => 1 powered in whatever is 1. 1/1= 1.
    % the blue graph shows a max value at y=1. The grapg will derfore
    % increes from -5 to 0, and the decrees form 0 to 5. For this function
    % the limmits dose not exist when x goes to 0, and it is why the 
    % graph never will cross the x-axsis.

    % For the function x/(x^2+1)^3/2 we will se that the graph will go
    % through origo (0,0). when x = 0, the output of 0/(0^2+1)^3/2 will
    % also be 0. That also indicate that the graph crosses the y- and
    % x-axis at origo 


%% Oppgave 6 - Plotting sesmic velocity model

 
% 6a) 

    % constant

    a = 0.01;
    b = 0.12;
    c = 1650;

    z = linspace(0,1000,51);

    velocity = a * z.^2 + b.*z + c;

    figure(4)
    plot(z,velocity)
    xlabel('Dybde [m]')
    ylabel('Hastighet [m/s]')
    title('Oppgave 6a')


% 6b)
    
    % constant

    a = 0.01;
    b = 0.12;
    c = 1650;

    z1=[0:20:1000];
    velocity = a * z.^2 + b.*z + c;

    figure(5)
    stairs(z1,velocity)
    
    xlabel('Dybde [m]')
    ylabel('Hastighet [m/s]')
    title('Oppgave 6b')
    
    
clear all;

% 6c)

    figure(6)
    
    layers = [0 35 660 2900 5150 6370];
    
    % using the avrage velocity that for each layer that i founded online
    Vp = [0 6.7 8.6 13.5 10 11.5];
    Vs = [0 3.7 4.9 7.5 0 4];
   
    stairs(Vp,layers, 'r --')
    hold on 
    stairs(Vs,layers, 'g-')
    
    title('The avrage p -& s- velocity by five layers')
    xlabel('velocity [km/s]')
    ylabel('Depth [km]')
    legend
    
    set(gca, 'YDir','reverse')
    
clear all;

%% Oppgave 7 - Polar coordinates

% 7a)
    % The Cartesian coordinates to the polar coordinates can be computed 
    % as the length of (x,y) => sqrt(x^2+y^2), then you have the r.
    % The phi is computed by tan^-1(y/x)

% 7b) 
    % if you already have the polar coordinates (r, phi) you can compute the 
    % Cartsesian coordinates by using this formula: x = r * cos(tetha) 
    % and y = r * sin(tetha)

% 7c)

    % written down 

% 7d)
    
    % Matlabs commands to compute polar coordinates from Cartesian
    % coordinates is cart2pol and pol2cart
    
    x = [1 -3 5];
    y = [1 4 -12];
    
    [phi,r] = cart2pol(x,y)
  
% 7e) 

    a = [1 1];
    b = [-3 4];
    c = [5 -12];

    % using the command "norm" to find the lenth
  
    length_a = norm(a)
    length_b = norm(b)
    length_c = norm(c)


% 7f) 
  
    % using the command "dot" to find the inner products
    
    innerproduct_ab = dot(a,b)
    innerproduct_ac = dot(a,c)
    innerproduct_bc = dot(b,c)
    
 % 7g)
 
 % 7h) 

    % used command "acosd" to get the angel in degrees
 
    angel_ab = acosd(innerproduct_ab/(length_a*length_b))
    
% 7i) 

    angel_ac = acosd(innerproduct_ac /(length_a*length_c))
    

 clear all;
 
% 7j) / 7k)
        
    t = 0:0.00001:2*pi;
    t1 = 0:pi/2:2*pi;
    
    x = cos(t);
    y = sin(t);
    x1 = cos(t1);
    y1 = sin(t1);
    
    figure(7)
    plot(x,y)
    hold on
    plot(x1,y1, 'v')
    axis equal
    grid on;
    title('Cartesian coordinates of 4 points - oppgave 7j/k)')
    xlabel('x-axis')
    ylabel('y-axis')

    
  
 % 7l)
    
    t1 = 0:pi/2:2*pi;
    
    figure(8)
    
    r = 3
    x = r*cos(t)+ 2;
    y = r*sin(t)+ 2;
  
    plot(x,y);
    grid on
    axis equal
    title('oppgave 7l)')
    xlabel('x-axis')
    ylabel('y-axis')
    
% 7m)
 
    % The coordinates of greenwich is given as (6370, 0, 0). we can think
    % of it as a start on the ecvator, and the coordinates are given as
    % r*cos(tetha) => 6370*cos(0) = 6370. For the cartesian coordinates of
    % the polar angel 180 degrees we will do the same. r*cos(phi) =>
    % 6370 * cos(180°) = - 6370.(can also use pi) then the carstesian
    % coordinates is (-6370, 0, 0).

    r = 6370;
    phi = cosd(180);

    cartesian_coordinates = [r*phi, 0, 0]
  
% 7n) 

    % polar angle 0 = At latitude 0 the point is at the Gulf of Guinea. but at 
    % other latitudes Greenwitch spain, algerie, ghana, burkina faso and
    % mali is at this point aswell
    
    % polar angle 90 = at lalitude 0 the point is in the Indian ocean.
    % For other latitudes we have Tibet, Mongolia and Russia.
    
    % polar angle 180 = at latitude 0 the point is in The Pacific ocean.
    
    % polar angle 270 => 180-270 = -90 = at the latitude 0 the point is in
    % The pacific ocean on the west cost of South-America. At other 
    % latiudes we have Guatemala, Usa, Canada

% 7o)
    
    % The Eighty Five East Ridge has it's name from its location and form. 
    % It is a fairly straight ridge at the 85° lognitude east for Greenwich 

% 7p)
    
    % The Eighty Five East Ridge belongs to the indian plate



%% Oppgave 8 - Matrices in Matlab    
    
% 8a)

    a = [4 8 12];
    b = [-4 -8 -12];
        
    A = [a;b]

    B = [-1 7 4; 2 1 -2]


% 8b) 

    vec22= B*2;

    C = A + vec22
    

% 8c)     

   vec_8c = A.*B


% 8d) 

   Vec_devide = A./B

% 8e)

   transpose_A = A'

% 8f)

    size_B = size(B)
    
% 8g)

    sin_value = sin(A)

  
clear all;

%% Oppgave 9 - Exercises 5-8 Chapter 2


% 9a) 

    % I would've used the identity command to create a 5x5 matrix with
    % ones on the diagonal and zero enywhere else

    Identity5 = eye(5)

% 9b)

    A = [8 7 11; 6 5 -1; 0 2 -8];
    B = [2 1 2; -1 6 4; 2 2 2];

    % computes the array product of A and B    
    
    arr_prodAB = A.*B
    
 
    % computes the matrix product of A and B    

    mat_prodAB = A*B
    
  
clear all;

% 9c)
            
    A = [1 2 3; 4 5 6; 7 8 9];
    
    B = A([3, 3, 2], :)

    % extracting the third row to make it row 1 and 2 for the new matrix B,
    % then extracting the second row to make it the last row i the new matrix B
     


% 9d)

    X = [1 2 3; -4 1 2; 0 9 -8];
    b = [12;13;-1];

    soulution = X\b 

    Determinant = det(X)


%% Oppgave 10 - Volcanos and magma champer dynamics


% 10b) 

    nu = 1/2 *(50/(50+50))
    
% 10c) 

    % The answar for "nu" make sense beacuse we'll get 1/2*1/2 => 1/4

% 10d)

    % magma chamber coordinates
    
    y = [0 0 -5];

    % given coordiantes 

    x1 = [0 0 0];
    x2 = [0 3 0];
    x3 = [10 0 0];

    r1 = norm(y-x1);
    r2 = norm(y-x2);
    r3 = norm(y-x3);

    dV = 0.01;
    cons = dV * (nu+1)/(3*pi);
    km_to_cm = 10^5;
    
    % The displacement for the magma chamber at the given coodinates 
    
    dis1_1 = km_to_cm * cons *(y-x1)/(r1^3)
    dis1_2 = km_to_cm * cons *(y-x2)/(r2^3)
    dis1_3 = km_to_cm * cons *(y-x3)/(r3^3)

% 10f)  

    % looking at the y1 coordinates and x coordiantes, we can only expect 
    % displacement in the z-axis. By calculating the norm myself i get -5.
    % the answer therfore make sense

    % looking at the y2 coordinates and x coordinates i can easy calculate 
    % (x-y2) and get [0 -3 -5], and i will derfore expect a downward  
    % displacment at the neagtive y and z axis.this corresponds with the 
    % answer i got.

    % we can again see that x-y3 = [-10 0 -5], where there will be no
    % displacement in the y-axis. but we will have a negtive displacement
    % at the x and z axis. 