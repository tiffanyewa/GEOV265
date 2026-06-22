%% Answers to excerise set 3 geov112 - Tiffany

%% Oppgave 1 - Plotting Review Question

% 1a)
 
    x = linspace(0, pi/2, 100);
    cos_2x = cos(2*x);

    % The first three none-zero terms
    taylor_1 = (cos_2x-cos_2x)+1;
    taylor_2 = 1 - 2*x.^2;
    taylor_3 = taylor_2 +((2/3)*x.^(4));


% 1b)

    figure(1)
    plot(x,cos_2x, LineWidth=1.5)

    hold on 
    
    plot (x,taylor_1, LineWidth=1.5)
   
    plot(x,taylor_2, LineWidth=1.5)

    plot(x, taylor_3, LineWidth=1.5)

    xlabel('x-value')
    ylabel('y-value')
    title('Oppgave 1a)')
    legend('cos(2x)','polynom 1','polynom 2', 'polynom 3')


 % 1c)

      % The plot shows how the first three none-zero values match the given
      % function cos(2x) at point x = 0. The blue line in the plot is 
      % repesenting the (cos(2x)) function. The red line is the first value 
      % of the expansion, and is seen as a straigh line. It's suppose to
      % mimic the cos(2x)function, but we can see that the other Taylor
      % terms fits a bit better. Shown on the plot,
      % the second Taylor term (yellow line)gives a better approximation 
      % then the first, but the third Taylor term (purple line) gives an
      % even better approximation. 


%% Oppgave 2 - Statistic and Random Numbers

% 2a) 

    % using the command 'rand' to get 80 random number bewteen 0 and 1
    rand_numb2a= rand(80, 1);

    % using the command 'mean' to find the average 
    average_2a = mean(rand_numb2a)

    % usinf the command 'std' to find the standard deviation (how much the
    % values variates from the average)
    std_2a = std(rand_numb2a)
    

    figure(2)
    histogram(rand_numb2a, 0:0.1:1)
    ylabel('y-value')
    xlabel('x-value')
    title('Oppgave 2a)')

% 2b) 

    rand_numb2b = rand(160, 1);
    
    figure(3)
    histogram(rand_numb2b, 0:0.1:1)
    ylabel('y-value')
    xlabel('x-value')
    title('Oppgave 2b)')

    average_2b = mean(rand_numb2a)

    std_2b = std(rand_numb2a)
    

% 2c) 

    % For the histogram in 2a), there are 80 random values selcetet from
    % 0-1. That will make the histogram plot have more variations then the
    % histogram in 2b). The 2b) hitsogram are taking dobbel the value then
    % 2a) between the same range, 0-1. Therfore histogram 2b) will look
    % more smoother then 2a).
    % They should have the same or nearly the same standard deviation and 
    % average value, beacuse they are bolth ranging from 0-1.
    % Intuitively we can tell that the averge is going to be around 0.5.

% 2d)
    
    rand_numb2d = rand(100,1);
   
    y = linspace(-10,10,100);

    figure (4)

    plot(rand_numb2d,y, '-*')

    
    ylabel('y-value')
    xlabel('x-value')

    title('Oppgave 2d)')


%% Oppgave 3 - Exercise 5 Chapter 3 & Exercise 1 Chapter 4

% 3a

    t = linspace(0,10,800);

    x = exp(-t).* cos(t);
    y = exp(-t).* sin(t);
    z = t;

    figure(5)

    plot3(x,y,z)
    grid on 

    ylabel('y-value')
    xlabel('x-value')
   

    title('Oppgave 3a)')

% 3b)
 
    Weight = [130 138 145 150 152 155 160 164 165 167 170 172 175];

    Frequency = [2 1 3 6 1 3 1 1 3 4 3 2 1];
    
    
    % using the command 'repelem' witch repeats the elemts in vector Weight
    % based on the vector Freuency 

    B = repelem(Weight, Frequency);
    
    ave_weight = mean(B)
    
    med_weight = median(B)
    
    std_weigt = std(B) 
    
    
 %% Oppgave 4 - Spherican and Geographical Coordinates 

% 4a)

    % The exception is at the orgin. The cartesian coordinates
    % repreesenting the orgin is (0,0). For the polar coordinates at 
    % the orgigin the r = 0, but θ can be whatever. when the length (r) is
    % 0, thenvthe every angle choosen will give us the the same
    % coordinates. In other words; one spesific polar coordinates for the 
    % orgin do not exist. 
    % It is important for the fundamental Earth sciences, in terms of that
    % it is good to  known this exception when 'making' the spherical
    % and geographical coordinates. 


% 4b)

    % spherical cooordinates:
    % r = radius
    % phi = z-axis angle
    % tetha = xy-axis angle
    
    % [r, phi, theta] 

    % x = r* sind(phi) * cosd(tetha);
    % y = r* sind(phi) * sind(phi);
    
    % z = r* cosd(theta); 
    
    % angle tetha is r with respect to z => can then 
    % write z = r * cos (tetha)

% 4c)
    
    % P = [x,y,z];         % cartesian coordiants
    
    % r = norm(P);          % r = sqrt(x^2+y^2+z^2)
    
    % phi = arccos(y/x);
   
    % tetha = atan(z/r);  % artan(z/(sqrt(x^2+y^2+z^2))
    

% 4d)

    % The Geographical coordinates makes it possible to navigate earth
    % posistions and locations in terms of longnitude and latitude. Where 
    % the spherical coordinates gives us 3D points. The r in spherical is
    % representing the length from the orgin. The r at for geographical are
    % usually representing the earth surface.
    % The Geographical cooridnates have the angle θ' and it's refered to as 
    % the latitude ( θ' = θ-90° ). Measured from the eqator at 0° to the 
    % south pole at -90° and North pole at 90°. ItFor spherical coordinates, 
    % tetha θ ranges from0 degress to 180 degrees.
    
  
    % The spherical coordinates have an angle often refered to as azimutal, 
    % that is the angel in the xy-plane, and ranges from 0 degrees to 360
    % degrees. For the Geographical coordinate this angel is measured from 
    % 0 degrees at the prime meridian, up to 180 degress to the east,
    % and -180 degrees to the west of the prime meridian. 
    % This angel is known as the longitude



% 4e) 

    % S = [r, phi, tetha]
    
    % radius = norm(S)
    % latitude = (tetha-90)
    % longitude = phi
    
    % r = radius * sin(lognitude) * cos(latitude)
    % phi = radius * sin(longitude) * cos(latitude)
    % tetha_prime = radius * cos(latitude)
    
% 4f)
    
    % C = [x y z]
    
    % R = 6371 % Earth radius in km

    % r = (norm(C) - R
    
    % phi = arctan(y/x)
    
    % tetha_prime = arctan(z/norm(r))
    
  clear all;


% 4g)

    R = 2270 * 10^-3;        % Beerenberg in km 

 Geo_coordinates =[
     6371 0 -90;             % South Pole
     6371 20 0;              % A point on the equator
     6371 5.32 60.39;        % RFB Bergen
     6371 -74 4.7;           % Bogota
     6371 11.4 47.27;        % Innsbruck
     6371+R -8.1 71;         % Beerenberg
     ]           

    r = Geo_coordinates(:, 1);         % 1st row repesenting the radius
    long = Geo_coordinates (:, 2);     % 2nd row repesentring longitude
    lat = Geo_coordinates (:, 3);      % 3rd row repesenting latititude

   
    x = r.* cosd(lat).* cosd(long);     % calculations from geogrphical
    y = r.* cosd(lat).* sind(long);     % to cartesian coordinates
    z = r.* sind(lat);

    Cartesian = [x,y,z];


    [tetha, phi, ra]=cart2sph(x, y, z);

    degTetha = rad2deg(tetha);           % converting from radians to degrees
    degPhi = rad2deg(phi);               % converting from radians to degrees

    spherical = [ra, degTetha, degPhi];






    disp('Cartesian coordinates')

    fprintf('\nSouth pole:\n %s\n\n',num2str(Cartesian(1,[1:3])))
    fprintf('A point on the equcator:\n %s\n\n',num2str(Cartesian(2,[1:3])))
    fprintf('RFB Bergen:\n %s\n\n',num2str(Cartesian(3,[1:3])))
    fprintf('Bogota:\n %s\n\n',num2str(Cartesian(4,[1:3])))
    fprintf('Innsbruck: \n%s\n\n',num2str(Cartesian(5,[1:3])))
    fprintf('Beerenberg: \n%s\n\n',num2str(Cartesian(6,[1:3])))

    disp('spherical coordinates')

    fprintf('\nSouth pole:\n %s\n\n',num2str(spherical(1,[1:3])))
    fprintf('A point on the equcator:\n %s\n\n',num2str(spherical(2,[1:3])))
    fprintf('RFB Bergen:\n %s\n\n',num2str(spherical(3,[1:3])))
    fprintf('Bogota:\n %s\n\n',num2str(spherical(4,[1:3])))
    fprintf('Innsbruck: \n%s\n\n',num2str(spherical(5,[1:3])))
    fprintf('Beerenberg: \n%s\n\n',num2str(spherical(6,[1:3])))


clear all;

%% Oppgave 5 - Global Seosmology I: Epicentral Distance

% 5a/ 5b)


    % P and Q is an input of arbitrary numbers, that represent two points on
    % the earth.

    P = [-60 100];
    Q = [-60 -20;];

    % seperating the latitude and lognitude for the first point. The first
    % comontent is refering to latitude, the second component is refers to
    % as lognitude 
    lat1 = P(:, 1);
    long1 = P(:,2);

    % seperating the latitude and lognitude for the second point.The first
    % comontent is refering to latitude, the second component is refers to
    % as lognitude 
    lat2 = Q(:, 1);
    long2 = Q(:, 2);


    % Having extracted the valules of lat & logn from the two points, 
    % I can now convert it do cartesian coodridantes.
    x1 = cosd(lat1).* cosd(long1);  
    y1 = cosd(lat1).* sind(long1);  
    z1 = sind(lat1); 
    
    x2 = cosd(lat2).* cosd(long2);  
    y2 = cosd(lat2).* sind(long2);  
    z2 = sind(lat2); 

    % collecting the cartesian coodrinates for the two point as
    % two sepreat arrays
    point1= [x1,y1,z1];
    point2 = [x2,y2,z2];

    % using the command 'dot', to find the dotproduct
    dot_product = dot(point1,point2);
    
    % using the command 'norm' to calculate the magnitude 
    magP = norm(point1); 
    magQ = norm(point2);

    % using the dot produck formula to find the angle.
    % θ = arccos(dotAB/mag(AB)), and this is the angular distance
    angular = acosd(dot_product/(magP*magQ));

    % Then to get the epicentral distance, the radius 3671 is devided by
    % 360 and mulityblyed by 2*pi. Then we know the what one degree in
    % epicentral distance equals to. By multiplying the angle calcultatet
    % above, we'll have the epicentral distance corresponding to the angle
    % epi_dis = angular * (6371/360*2*pi) 
   
   clear all;
   
 %  5c)
   
    
    Jan_mayen = [71 -8.1];
    Bergen = [60.4 5.32;];

    lat1 = Jan_mayen (:, 1);
    long1 =Jan_mayen (:,2);

    lat2 = Bergen(:, 1);
    long2 = Bergen(:, 2);

    x1 = cosd(lat1).* cosd(long1);  
    y1 = cosd(lat1).* sind(long1);  
    z1 = sind(lat1); 
    
    x2 = cosd(lat2).* cosd(long2);  
    y2 = cosd(lat2).* sind(long2);  
    z2 = sind(lat2); 


    point1 = [x1,y1,z1];
    point2 = [x2,y2,z2];

   dot_product = dot(point1,point2);

   mag1 = norm(point1);
   mag2 = norm(point2);

   angular = acosd(dot_product/(mag1*mag2))

   epi_dis = angular * (6371/360*2*pi) 

   fprintf('The angular deegre bewtween Bergen and Jan Mayen is: %f\n\n', angular)
 
   

 % 5d)
 
     
     r = 6371;
     phi = angular/2;

     y = r * sind(phi);
     
     straight_line = 2*y

    fprintf('The staight line distance between the Jan Mayen eartquake and Bergen is:\n%f km \n', straight_line)
   



% 5e)

    P_wave = 8.2; %[km/s]

    S_wave = 4.3; % [km/s]

    P_time = straight_line/P_wave;
    S_veloicty = straight_line/S_wave;

    fprintf('\nP-wave travel time is: %f s. \nS-wave travel time is: %f s.\n' ,P_time,S_veloicty)
                           
    

clear all;

 %% Oppgave 6 - Seismology II: 1D structure of the Earth
 
 % 6a)

       iasp91_file = fopen('iasp91.txt'); 
       iasp91 = textscan(iasp91_file, '%f %f %f %f');
       fclose(iasp91_file);
    
       Earth_depth = iasp91{1};              % depth [km]
       P_velocity = iasp91{2};               % P-wave velocity [km/s]
       S_velocity = iasp91{3};               % S-wave velocity [km/s]
       Density = iasp91{4};                  % Density (ρ) [g/cm^3] 


% 6b)

      figure (6)

      yyaxis left

      % p-veolocity in magenta
      plot(Earth_depth,P_velocity, 'm-',LineWidth = 1.5)  
      hold on 

      % s-velocity in blue
      plot(Earth_depth,S_velocity, 'b-', LineWidth = 1.5)  
      ylabel('P-& S-velocity [km/s]')


      yyaxis right

      % denisty in slashed line
      plot(Earth_depth,Density,'--', LineWidth = 1.5)  

      xlabel('Depth [km]')
      ylabel('Denisty [g/cm^3]')
      legend 
      title('IASP91 – Earth Velocitys & Density')

      legend('P-velocity', 'S-velocity','Density','Location', 'east')


   
% 6c) 

    % Five layers given as the depth of the; crust, upper mantel, lower mantel,
    % inner core & outer core
    five_layers = [35 660 2990 5150 6371];
 
    % Empty arrays that store the S -and P-velocities for diffrent layer
    p_velocities = [];
    s_velocities = [];
    
    % Empty arrays that stores the average standard and P-velocities 
    % for the diffrent layers
    avg_p_velocity = [];
    std_p_velocity = [];

    % Empty arrays that stores the average standard and S-velocities 
    % for diffrent layers
    avg_s_velocity = [];
    std_s_velocity = [];


    % Using a for loop where 'i' is an index who will iritate through 
    % Earth_depth and add the correspoding p and s velocities to the empty
    % array. To make sure we are calculting the velocites for each layer, 
    % a 'if' statemnt accours. This tells us that if Earth_depth(i) 
    % is bigger then the layer, will'll add an increment by 1 to q. 
    % this will skip us to the next layer in the array 'five_layers'. 
    % The loop will calculate the average and std velocities that belongs
    % to the same layers. 
    
    q = 1;

    for i = 1:length(Earth_depth)

        p_velocities = [p_velocities, P_velocity(i)];
        s_velocities = [s_velocities, S_velocity(i)];

        if Earth_depth(i) >= five_layers(q);
            q = q + 1;

        avg_p_velocity = [avg_p_velocity; mean(p_velocities)];
        std_p_velocity = [std_p_velocity; std(p_velocities)];

        p_velocities = [];

        avg_s_velocity = [avg_s_velocity; mean(s_velocities)];
        std_s_velocity = [std_s_velocity; std(s_velocities)];

        s_velocities = [];

       grid on


       end

   end

   avg_p_velocity;
   std_p_velocity;

   avg_s_velocity;
   std_s_velocity;

   figure (7)

   subplot(2,2,1)
   bar(avg_p_velocity, 'FaceColor','#4DBEEE')
   title('Average p-velocities')
   ylabel('Velocity [km/s]')
   xlabel('Layers')

   subplot(2,2,2)
   bar(std_p_velocity,'FaceColor',"#A2142F")
   title('Standard p-velocities')
   ylabel('Velocity [km/s]')
   xlabel('Layers')


   subplot(2,2,3)
   bar(avg_s_velocity, 'FaceColor',"#EDB120")
   title('Average s-velocities')
   ylabel('Velocity [km/s]')
   xlabel('Layers')



   subplot(2,2,4)
   bar(std_s_velocity, 'FaceColor',"#77AC30")
   title('Standard s-velocities')
   ylabel('Velocity [km/s]')
   xlabel('Layers')




% 6d)

    % In the plot the  bars are represented as the crust, upper mantel, 
    % lower mantel, outer core and inner core from left to right. 
    % as visualzed in the plot we will expect the average velocity
    % for P and S to increes up to the lower mantel. The lower mantel is
    % also where we find the higest average, represented as the third bar. 
    % The S wave has no velocity in the outer core, and therfore no bar is 
    % represented there. This applies for the average and standard. The 
    % standard deviation increeed from the crust to the lower mantel, and 
    % tells us that the velocities vs the average velocities differ more 
    % and more form the crust til the outer core. For the P velocity in the
    % inner core, the standrad deviation is lower then for the upper nad
    % lowe mantel. The bar representing the standard devitaion of the inner
    % corner tells us that is not a big diffrens from the diffrent 
    % velocities and the average

clear all;

%% Oppgave 7 - Exploring Seismic and Regional Seismology I: Waves in a layer over a Halfspace

% 7a)
    
    % drwan by hand 


 % 7b) 
    
    h = 3.5;                                        % depth of layer 1 [km]
    km = 15:1.5:30;
    p1_velocity = 5.5;                              % [km/s]
    
    t_direct = km/p1_velocity;                    % km/(km/s)=> [s]

    t_reflect = sqrt(km.^2 + 4.*h.^2)/p1_velocity; % km/(km/s)=> [s]

    disp('Time of the direct wave:')
    disp(' ')
    for i = 1:length(km)
        
        disp([num2str(km(i)),'km = ', num2str(i) num2str(t_direct(i)),' s'])

    end
    
      disp(' ')
      disp('Time of the reflected wave:')
      disp(' ')
      
    for i = 1:length(km)

        disp([num2str(km(i)),'km = ', num2str(i) num2str(t_reflect(i)),' s'])

    end
    
   
% 7c)
    
    figure(8)
    
    subplot(2,1,1);
    
    plot(km ,t_direct, 'b-');
    hold on 
    plot(km ,t_reflect,'m-.');
    
    title('Travel time of direct and reflected waves')
    xlabel('Distance [km]')
    ylabel('Time [s]')
    legend('Direct wave', 'Reflected wave','location','southeast')
    grid on
    
    subplot(2,1,2);
    
    z =[0 3.5 3.5 10];
    p = [5.5 5.5 8.2 8.2];
    s = [3.4 3.4 3.9 3.9];
   
    plot(z,p, '--')
    hold on
    plot(z,s,'r')
    
    title('Velocity model')
    xlabel('Depth [km]')
    ylabel('velocity [km/s]')
    grid on
    legend('p-wave', 's-wave','location','east')
   

    clear all;


%% Oppgave 8 - Displacement Caused by a Sill

% 8a) 

    % around the magma chamber the pressure and tempreture is often higher
    % witch makes it more likley for surronding rocks with diffrent melting
    % tempreue to melt. The magma has a lower density then the nearby rocks,
    % and will therfore seek up and finds its way into cracks.
    
    % The magma is guided in diffrent vents. At the center of a vulacano the
    % vulcano is hevier. The vulcano is respossible for high pressure and 
    % temprature. When the magma travles in secondy vent and fractires
    % alonside the center, it then will solidify as a cone shape
        


% 8b)

    nu = 1/2 *(50/(50+50));

    % magma chamber coordinates
    
    y = [0 0 -5];

    % given coordiantes 

    x1 = [0 0 0];
  

    
    r1 = norm(y-x1);


    dV = (0.01);
    cons = dV * (nu+1)/(3*pi);
    km_to_cm = 10^5;
    chamber_volume = 10^-9; % from 10^3m to 0.01km^3

    % The displacement for the magma chamber at the given coordinates. 
    % multiplying each displacement with the chamber volume to adjust 
    % the souce being a body, rather a point
    
    dis1_1 = km_to_cm * cons *((y-x1)/(r1^3) * chamber_volume);
   
    

    fprintf('Displacment at [0 0 0]:\n%s\n',num2str(dis1_1))

  


clear all;
    
   
    % 8c)

clear all;

    nu = 1/2 *(50/(50+50));
    dv = 0.01;
    cons = dv*(nu+1)/(3*pi);
    km_to_cm = 10^5;
    vol = 0.01^3;

    % using the linspace command so the x-value will be 201 points ranging 
    % from -1 km to 1 km
    xs = linspace(-1,1,201);
    ys = 0;
    zs = -5;
    origin = [0 0 0];
    
    % computeing the length to find the distance, and takning the cube 
    % of the answer.

    dist = ((xs-origin(1)).^2 + (ys-origin(2)).^2 + (zs-origin(3)).^2);
    dist = sqrt(dist)
    dist3 = dist.^3;
    
    % computing the vertical displacment at every points
    vdist = vol*cons*km_to_cm*(origin(3)-zs)./dist3;

    % summing the values, so we get the total vertcal displacemnt
    vdist_0 = sum(vdist);


    fprintf('The vertical deformation of a sill:\n%s\n', vdist_0)



 % 8d)

     p1 = [1 0 0];
     p2 = [3 0 0];
     p3 = [5 0 0];
    
     dist1 = ((xs-p1(1)).^2 + (ys-p1(2)).^2 + (zs-p1(3)).^2);
     dist2 = ((xs-p2(1)).^2 + (ys-p2(2)).^2 + (zs-p2(3)).^2);
     dist3 = ((xs-p3(1)).^2 + (ys-p3(2)).^2 + (zs-p3(3)).^2);

     dist1 = sqrt(dist1);
     dist2 = sqrt(dist2);
     dist3 = sqrt(dist3);

     y1 = vol*cons*km_to_cm*(p1(3)-zs)./dist1.^3;
     y1 = sum(y1);
     y2 =vol*cons*km_to_cm*(p2(3)-zs)./dist2.^3;
     y2 = sum(y2);
     y3 = vol*cons*km_to_cm*(p3(3)-zs)./dist3.^3;
     y3 = sum(y3);


    figure(9)
    plot( [0 1 3 5], [vdist_0 y1 y2 y3], LineWidth=1.5)
    grid on 

    xlabel('distance from origin [cm]')
    ylabel('Vertical defromation')
    title('Oppgave 8d)')


% 8e)  

    % The graph should repesent the higest values at
    % x = 1, 3, 5, and show that the values goes twords zero when moving
    % away from the x-values (applies to negative values moving left and 
    % big values moving right). This is because at x = 1, 3, 5,
    % the value of displacement is the highest at these points, because 
    % it's closer to the source. For negative x values or
    % large x values we will see a trend where the values goes twoards
    % zero. It is because we are moving from the soure, witch reduces the
    % impact from the source.


   

