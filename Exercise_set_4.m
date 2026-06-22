%% Answers to excerise set 4 geov112 - Tiffany

%% Oppgave 1 - Matrix computations 

% 1a) 
    
    matrixA = (eye(12,15)*2);
    matrixA(:,end)=2;

  
% 1b) 
     
    matrixA(12,2)= -5;

% 1c)
    
    mean(matrixA(:))

% 1d)

    sum(matrixA,'all')
    sum(matrixA(:))


%% Oppgave 2 - Global Seismology: Traveltimes of P, PcP, PKIKP ans PKJKP

% 2a)

    P_crust_mantel = 12.6;    %[km/s]
    P_outer_core = 9.4;       %[km/s]
    P_inner_core = 11.6;      %[km/s]
    S_inner_core = 3.4;       %[km/s]



    LA = [34 -118.1];
    London = [51 0];

    lat1 = LA (:, 1);
    long1 =LA (:,2);

    lat2 = London(:, 1);
    long2 = London(:, 2);

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

    angular = acosd(dot_product/(mag1*mag2));

    epi_dis = angular * (6371/360*2*pi); 
   
    r = 6371;
    phi = angular/2;
    y = r * sind(phi);


     
    straight_line = 2*y;

    p_time = (straight_line/P_crust_mantel)/60
    
    
% 2b)

    k1 = sqrt(r^2-y^2);
    Delta = 6371-2990;
    k2 = k1-Delta;
    r2 = sqrt(k2^2+y^2);
    hyp= 2*r2;

    PcP_t = (hyp/P_crust_mantel)/60


% 2c)

    layers_radius = [2990 2160 1221];

    P_times = [ 12.6 9.4 11.6];

    total_times = 2*(layers_radius./ P_times);

    PKIKP = (sum(total_times,'all')/60)
    
    

clear all;

%%  2d) 

    layers_radius = [2990 2160 1221];

    PKJKP_times = [12.6 9.4 3.4];

    total_times = 2*(layers_radius./ PKJKP_times);

    PKJKP = (sum(total_times, 'all')/60)


% 2e) 
    
    % The PKIKP phase is a p-wave that starts at the core and goes
    % through the mantel, and outer and inner core, and then goes out
    % through the outer core and mantel.
    % The PKJKP phase travells through the mantel an outer core as a p-wave
    % before it enter the inner core as a s-wave, and up through the outer
    % core and mantel as a p-wave 

% 2f)

    % When doing the the calculations, the fact that the eart is not
    % homogenius or have all horizontal bounteries is not takning 
    % in conterbility. My calculation gave a PIKIP at 19 minuts,
    % while the Figure 4.16 gave a time of 20 minuts. I would belive that
    % the data from det book comes from real research and data, while we
    % only use syntetic data. 


% 2g)

    % The PKJKP tells us that the outer core is not a solid, and can not
    % hold shear waves. The s-wave do not travel in the outer core. The
    % s-wave hold only the shear property, witch is 0 in liquid. The PKJKP
    % also tells us that the inner core has a shear modulus other then 
    % zero and is solid.
    % the PKJKP is importent in geophysics, and gives us more infromation 
    % about the earths inner structure, ray path, s-and p-wave properites
    % and the inner-outer core bountery. 
   
% 2h) 

    % The acronyms for the phase that travel as a p-wave through the
    % mantel and gets refelcted fromt he inner core boundary is PKikP
    % P = P-wave in the mantel
    % K = P-wave through the outer core 
    % i = reflection from the outer core inner core boundery



%% oppgave 3 - 'for loop' excercise

% 3a)

   array3a = sum([5:5:1000])
 

% 3b)

    sum_3b = 0;

    for i = array3a
        sum_3b = sum_3b + i;
    end     

     sum_3b 



% 3c) 

     sum_3c = 0;
     b = 1; 

 for index = [5:5:1000];
     b = b+1;
     c = (-1)^b;
     sum_3c = sum_3c+c*index;

 end    
 
 sum_3c

%% oppgave 4 - Exploration Seismics/ Regional Seismology III


% 4a) 

    h = 3.5;                                      
    km1 = 12;
    km2 = 22;
    p1_velocity = 5.5;                          
    

    ref1 = sqrt(km1^2 + 4*h^2)/p1_velocity;         
    ref2 = sqrt(km2^2 + 4*h^2)/p1_velocity;

    hy1 = sqrt((km1/2)^2 + h^2);
    deep1 = sqrt(hy1^2-h^2);

    hy2 = sqrt((km2/2)^2 + h^2);
    deep2 = sqrt(hy2^2-h^2);


    figure(1)
 

    z =[0 deep1 km1];
    z1 = [0 h 0];

    x = [0 deep2 km2];

    plot(z, z1, LineWidth=2)
    hold on
    plot(x,z1, LineWidth=2)
    plot([0,km2],[h,h],'k', LineWidth=1.5)
    plot([0,km2],[0,0],'k', LineWidth=1.5)
    

    plot(0, -.1, 'pentagram','MarkerFaceColor',"#A2142F", 'MarkerSize',20)
    plot(12, -.1, 'bv', 'MarkerFaceColor',[0 0.4470 0.7410], 'MarkerSize',10)
    plot(22, -.1, 'bv', 'MarkerFaceColor',[0 0.4470 0.7410],'MarkerSize',10)

    text(-1, -.5, 'Source', FontSize=10)

    text(11.5, -.5, {'Receiver', '12km'}, FontSize=10)
    text(21.5, -.5, {'Receiver', '22km'}, FontSize=10)
    text(23, 0,  'Surface', FontSize=14)

    text([23 23], [3 3], 'Layer 1', FontSize=14)
    text([23 23], [4 4], 'Layer 2', FontSize=14)
    ylim([-1 5])
    xlim([-1 24])
    axis off
    set(gca, 'YDir','reverse')
    
    
 %% Oppgave 5 

% 5a)
 
     eqdata = readtable('usgs.csv');

     magn = eqdata.mag;
 
     figure (2)

     histogram(magn, FaceColor="#A2142F")
     title('Distrubution Of Magnitude Versus Earthquackes')
     ylabel('Earthquackes')
     xlabel('Magnitude')

% 5b)

  magnitude = sort(magn);

  % When looking at the sorted array, we can see that there exist 330 
  % earthquakes with a magnititude over 5. by using a for-loop we can also
  % to determent how many earthquakes has a magnitude over 5. the answer 
  % from the for-loop corresponds.

  mag5 = 0;
  for i = 1:length(magnitude);

    if magnitude(i)>= 5
        mag5 = mag5+1;

    end 

  end 

    mag5


    figure(3);

    edges=[3.5, 5, 8];
    histogram(magnitude, edges);

    title('Distrubution Of Earthquakes lower and higher then 5 magnitude')
    ylabel('Earthquackes')
    xlabel('Magnitude')



    % looking at a histogram we can easly tell that there's 330 elementes
    % that is 5 or higher. this also display that there are
    % signifcantly more earthquakes below magnitude 5, then higher.

% 5c)

    x =find(magnitude >= 5);
    mag_over5 =length(x);

% 5d)

    x1 =find(magnitude >=6);
    mag6 =length(x1) 
    
    x2 =find(magnitude>=7);
    mag7 =length(x2) 

%5e) 

    depth = eqdata.depth;
    max_depth = max(depth)

%f)

    sorted_depth = sort(depth);
    [d i]= sort(depth);

    % sorts the depths from lowest to higest with the 
    % corresponding magnitude
    magn_depth = [d magn];

    figure(4)
    histogram(sorted_depth)
 
    title('Distrubution Of Depth vs Earthquakes ')
    ylabel('Earthquackes')
    xlabel('Depth')

    
%5g)   

    % We have significantly more shallow eartquakes especilly at 10km and 
    % up to 30km. 
    % and we see that the deeper the depth the fewer the earthquakes.
    % we find the oceanic crust to be at 5-10 km deep, where it makes sense 
    % for seismic activity to be higher due to oceanic ridges and
    % dubduction zones. at the dubduction zones we can find 
    % the wadati-benioff zone, that can explain why we also have some 
    % earthquakes deeper then the crust and the MOHO. 
    % Going deeper down inn to the mantel the rocks is more plastic and 
    % dcutile, and that is why there is not a lot of earthquackes
    % happening around 270 km to 350 km. 
    % however, it is a slight increase around 500km depth.
    % Than can be beacuse of the high pressure at these depths increases 
    % the melting tempreture, which cause the rocks to have a 
    % more solid phase. Then there will accour fractures
    % rather then plastic deformation.

    
    
%5h)
    edges1 = [0:10:sorted_depth(end)];
    edges2 = [100:10:sorted_depth(end)];
   
    figure(5)
    subplot(1,2,1)
    histogram(sorted_depth,edges1, FaceColor="#4DBEEE")
    xlabel('Earthquake depth')
    ylabel('Earthquake quantity')
    title('All earthquakes as a function of depth',' with intervals of 10km ')
    subplot(1,2,2)
    histogram(sorted_depth,edges2, FaceColor="#EDB120")
    xlabel('Earthquake depth')
    ylabel('Earthquake quantity')
    title('All earthquakes as a function of depth',' with intervals of 10km, larger then 100km')

    % The histogram shows us that most of the earthquakes happens at
    % depths shallower then 100km. At the right histogram, earthquakes that 
    % happend at 100 km is taking away. The higest Y-values for that 
    % histogram is 70.  when only looking at eartquakes deeper then 
    % 100km, a lot of them is gone.

%% Oppgave 6 - Displacement Caused by a 2D Sill


% 6a)

    nu = 1/2 *(50/(50+50));
    dv = 0.01;
    cons = dv*(nu+1)/(3*pi);
    km_to_cm = 10^5;
    vol = 0.01^3;

    x_sill =[-1:0.01:1];
    z = -5;
    y = 0;

    x_rec = linspace(-20,20,51);

    y_rec = 0;
    z_rec = 0;

    vertical_dis=[];

    for i = 1:length(x_rec)
        dist = ((x_sill-x_rec(i)).^2 + (y-y_rec).^2 + (z-z_rec).^2);
        dist = sqrt(dist);
        dist = dist.^3;
        dist = (z_rec-z)./dist;

        v_dist = sum(dist);
        vertical_dis = [vertical_dis, v_dist];
    end

    figure(6)
    
    plot(x_rec,vertical_dis*vol*cons*km_to_cm,'o-' ,LineWidth=1.5 )
    colormap spring
    grid on 
    
    xlabel('distance from origin [km]')
    ylabel ('vertical defromation [cm]')
    title('Oppgave 6a')      




% 6b)

    % it is important to initialize arrays before a for-loop, beacuse when
    % using a for loop we are going to iterate through something such as
    % an array. When initialize arrays before a for-loop the the value and
    % information of how many times its going to loop, or what to find is
    % given in the arrays.
    % When initialize arrays after a for-loop, MATLAB will change and
    % resize the array for each iteration. This can slow down the
    % execution.


% 6c) 

    % the graph is symterical with a 'bell curve'. it has its highest 
    % value near x = 0/origin. moving away from
    % the origin the value decreeses going twords zero. this trend reflects
    % the reduced effect of the soure on vertical defromation, when the
    % distant from orgin increeses. 
 

 % 6d)

    % drawn 

  
% 6e)

    xs = [-1:0.01:1];
    ys = [-0.6:0.01:0.6];
    zs = -5;
    origin = [0 0 0];

    [X Y] = meshgrid(xs, ys);
    dv = zeros(length(ys), length(xs));

    dist = ((X-origin(1)).^2 + (Y-origin(2)).^2 + (zs-origin(3)).^2);
    dist = sqrt(dist);
    dist = dist.^3;
    disp = (origin(3)-zs)./dist;


    dv = sum(disp(:));
    dv = dv*vol*cons*km_to_cm

%6f)

    vertical_displacement = zeros(51,1);
    disp = zeros(length(ys), length(xs));

    [X Y] = meshgrid(xs, ys);

for i = 1:51

    dist = sqrt((X- x_rec(i)).^2 + (Y- origin(2)).^2 + (zs-origin(3)).^2);
    dist = dist.^3;
    disp = (origin(3) - zs) ./ dist;
    
    vertical_displacement(i) = sum(disp(:));

end

    
    figure(7)

    plot(x_rec, vertical_displacement*vol*cons*km_to_cm,'-^', LineWidth=1.5 )
    grid on

    xlabel('distance from origin [km]')
    ylabel ('vertical defromation [cm]')
    title('Oppgave 6f')      

    % The result is visualised in the plot showing how the impact of 
    % vertical deformation decreases with the distance from origin 
    % increases. The biggest value at origin reprecent the point right 
    % above the source. When moving away from the soure the value
    % decreases, witch we can understand by looking at computaion of the 
    % distance (dist = dist.^3). since it's cubed there will be a fast
    % decreas. The source of the sill is given as x_sill =[-1:0.01:1] and
    % is placed along the x-axis. The graph shows a symetrical 'bell
    % curve' that decreases symetrically when going from the origin 
    % twoards right or left. The value and the plot
    % lookes like it makes sense for this scenario. 


