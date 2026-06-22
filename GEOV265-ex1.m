%% Exercise Set 1 GEOV265

%% Question 1: Matlab commands and matrices

% 1a) 
    Matrix = ones(200,300)*9 + eye(200,300)*-13;
    Matrix(1,:)=-4

% 1b)

    a = [3:6:117].^4;
    b = [-6:-6:-120].^4;

    total = sum(a)-sum(b)

   
    x = [3:3:120].^4;

    s=1
    t = 0
    for i =(x)
        s = s+1
        d = (-1)^s

        t = t+d*i;
    end 

%% Question 2: Matlab and Seismology

    seis1 = ones(20,7);
    seis2 = ones(7,20);

% 2a)


    Ptime = seis1(:,7);
    Pav = mean(Ptime(:));


% 2b) 
      Tseis2 = seis2';

      seis3 = [seis1;Tseis2];


% 2c)
    colat = seis3(:,4);
    lat = 90-colat;
    sesi3(:,4)= lat;


% 2d)

    last20 = seis3(end-19:end,:)

    xlat=last20(:,1)
    xlon = last20(:,2)
    % xdepth= last20(:,3)

    plat=last20(:,4)
    plon = last20(:,5)
    % pdepth= last20(:,6)
    radius = ones(20,1)*6371;




   
  [x1,y1,z1]=sph2cart(xlat,xlon,radius)

  p1=([x1,y1,z1])';

  [x2,y2,z2]=sph2cart(plat,plon,radius)

  p2 = ([x2,y2,z2])';

  epidis = acos(dot(p1,p2)./(norm(p1)*norm(p2)))




 %% 2e)

     first30 = seis3(1:30,:)

    
    lat1=first30(1,:)
    lon1 = first30(2,:)
    depth1= first30(3,:)

    lat2=first30(4,:)
    lon2 = first30(5,:)
    depth2= first30(6,:)

   
     [x1,y1,z1]=sph2cart(lat1,lon1,depth1)
    
     p1=[x1,y1,z1]
    
     [x2,y2,z2]=sph2cart(lat2,lon,dept2)
    
     p2 = [x2,y2,z2]

    epidis = acos(dot(p1,p2)./(norm(p1)*norm(p2)))

    y = r*sin(epidis/2)

    k1 = sqrt(r^2-y^2);
    Delta = 6371-2990;
    k2 = k1-Delta;
    r2 = sqrt(k2^2+y^2);
    hyp= 2*r2;

    PcP_t = (hyp/10.5)/60
clear all
close all
 %% Question 3: Magma Chamber Dynamics

 % 3a)

     vol = 5^3 *1e3;
     y = [3,2,0.6];
     x = [2,-2,-3];
    
     r = norm(x)-norm(y);
    
     d = 0.002*vol.*(x(3)-y(3)./r.^3);
    
     displacement = d*1e5

 % 3b)

    xrec = 0;
    yrec=linspace(-1875,1875,31);
    zrec = 0;

    r1 = (xrec-x(1))^2+ (yrec-x(2)).^2 + (zrec-x(3))^2;
    dist =sqrt(r1);

    d1 = 0.002*vol.*(0-x(3))./dist.^3;
    
    disp = sum(d1*1e5)

% finn ut hvordan og når jeg skal bruke yrec 


clear all

% 3c) 

   % y rec er gitt i meter, alt annet er i KM ebdre dette 

    z = [-2:0.01:-4];
    y = [-0.4:0.01:1.6];
    x = [-1:0.01:1];


    [X,Y,Z]=meshgrid(x,y,z);


     yrec=linspace(-1875,1875,31);
     origin=[0 0 0];

        disp1=[];
    for i = 1: length(yrec)

        dist1 = (X-origin(1)).^2 + (Y-yrec(i)).^2 + (Z-origin(3)).^2;

        r = sqrt(dist1).^3;
        dv1 = (origin(3)-Z)./r;
       
        disp1 = [disp1, sum(dv1(:))]
    end 



clear all

%% 3d)
    cir = [0:(2*pi)/19:2*pi];
    r = 300 % diamater gitt som 600, radius = 300

    x = r * sin(cir);
    y = r* cos(cir);
    z = sqrt(x.^2+y.^2);

    cartpoints = [x;y;z]



