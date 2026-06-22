%% Exercise Set 3 GEOV265 - Tiffany Ajayi



%% Oppgave 3 - Numerical Ray Tracing

clear all; close all;

    
% 3b) 


xs = 0; % staring position source x
zs = 0; % staring position source z

v = 3500; % constant velocity

phi = [0:30:330]; % take-off angles
nphi = length(phi);



dt = 0.1; % time stamp
nt = 10; % number of steps

% giving sizes to the arrays
xray = zeros(nt,1); 
zray = zeros(nt,1);
pxray = xray;
pzray = xray;

xray(1) = xs;
zray(1) = zs;

figure(10)
hold on, grid on, title('2D ray equations – Constant velocity')
xlabel('x-axis'), ylabel('y-axis')



for j = 1:nphi % Loop through the take of angle at posistion 

pxray(1) = cosd(phi(j))/v; % slowness vector 
pzray(1) = sind(phi(j))/v;

    for i = 1:10-1 % Loop through time steps to calculate the ray position 
    
        % C qaalculating the next x and z posisition using the take off angle
        % and velocity 
        xray(i+1) = xray(i) + dt * v^2 * pxray(1); 
        zray(i+1) = zray(i) + dt * v^2 * pzray(1);
        
        % The next step for x and z
        pxray(i+1) = pxray(i);
        pzray(i+1) = pxray(i);
       
    end 

    plot(xray,zray,'.--')
    title('2D Ray Tracing - contant velocity') 
    ylabel('z [m]')
    xlabel('x [m]') 
    
end

legend(string(phi) + '°', 'Location', 'eastoutside')
    
% 3c)
    
    % The travel time can be expressed as tt =  dt*nt
    % nt is the number of time steps, and dt is the time interval



 clear ver


%% 3d) 




xs = 0; % staring position
zs = 0;

v = 3500; % constant velocity

phi = [0:30:330]; % take-off angles
nphi = length(phi);



dt = 0.1; % time stamp
nt = 10; % number of steps

% giving sizes to the arrays
xray = zeros(nt,1); 
zray = zeros(nt,1);
pxray = xray;
pzray = xray;

xray(1) = xs;
zray(1) = zs;



c(1) = 1.6 - 0.45.*zs % Velocity 

z = zs + dt; % 

zh = 1.6-0.45*z - c(1);

df = zh/z;


figure(2)
hold on, grid on 



for j = 1:nphi

c = 1.6 - 0.45.*zs;

pxray(1) = cosd(phi(j))./c;
pzray(1) = sind(phi(j))./c;



    for i = 1:10-1
    
        xray(i+1) = xray(i) + dt *c.^2* pxray(i);
        zray(i+1) = zray(i) + dt *c.^2* pzray(i);
        
        
        pxray(i+1) = pxray(i);
        pzray(i+1) = pzray(i) -1/c * df*dt;

        c = 1.6 - 0.45.*zray(i+1);
    end 
    
   
    plot(xray,zray,'.--')
    title('2D Ray Tracing') 
    ylabel('z [km]')
    xlabel('x [km]') 
   

end

legend(string(phi) + '°', 'Location', 'eastoutside')

clear var;
   
%% 3e)


xs = 0;
zs = -1;

phi = [0:30:330];
nphi = length(phi);

ZZ = [-4:0.1:2];
XX = [2:0.1:2];

Vel = 1.6-0.45*ZZ;

vs = interp1(ZZ,Vel,zs);

dvdz = -0.45;

dt = 0.1;
nt = 10;

xray = zeros(1,nt);
zray = zeros(1,nt);
px = zeros(1,nt);
pz = zeros(1,nt);

xray(1) = xs;
zray(1) = zs;

figure(3)
hold on, grid on


for j = 1:nphi

    px(1) = cosd(phi(j))/vs;
    pz(1) = sind(phi(j))/vs;


    for i = 1:10-1

        vq =interp1(ZZ,Vel,zray(i));
        
        xray(i+1) = xray(i) + dt *vq.^2* px(i);
        zray(i+1) = zray(i) + dt *vq.^2* pz(i);
        

        px(i+1) = px(i);
        pz(i+1) = pz(i) - dvdz*dt/vq;

    
    end 
    
   
    plot(xray,zray,'.--')
    title('2D Ray Tracing - interpolation') 
    ylabel('z [km]')
    xlabel('x [km]') 
   


end

legend(string(phi) + '°', 'Location', 'eastoutside')

%% 3f)

clear all; close all;

dir = [45:1:135];
nphi = length(dir);

dx = 0.01;
z = [-1.5: dx: 0];
x = [3.5: dx: 6];

[XX, ZZ]= meshgrid(x,z);

xs = [4.68, 0, -1.5];

x0 = [4.6, 0, -0.6] 

r0 = 0.3;

r = sqrt((XX-x0(1)).^2 + (ZZ-x0(3)).^2);

cc = 1.6-0.45.*ZZ-0.8*exp(-r.^2/r0^2);
    
  
vs = interp2(XX,ZZ,cc,xs(1),xs(3));

[dfdx, dfdz] = gradient(cc, dx, dx);

dt = 0.1;
nt = 50;

xray = zeros(1,nt);
zray = zeros(1,nt);
px = zeros(1,nt);
pz = zeros(1,nt);

xray(1) = xs(1);
zray(1) = xs(3);


figure(4)
hold on, grid on
imagesc(x, z, cc)
colorbar


for j = 1:nphi

    px(1) = cosd(dir(j))./vs;
    pz(1) = sind(dir(j))./vs;


    for i = 1:50-1

        vq = interp2(XX,ZZ,cc,xray(i),zray(i));
        
        dx_inter =interp2(XX,ZZ,dfdx,xray(i),zray(i));
        dz_inter =interp2(XX,ZZ,dfdz,xray(i),zray(i));
        
        xray(i+1) = xray(i) + dt *vq.^2* px(i);
        zray(i+1) = zray(i) + dt *vq.^2* pz(i);
        

        px(i+1) = px(i)- dx_inter*dt/vq;
        pz(i+1) = pz(i) - dz_inter*dt/vq;

    
    end 
    
    
    plot(xray,zray)
    title('Ray paths from the ’gas cloud Valhall’ model')

    xlabel('x [km]') 
    ylabel('z [km]')


end




% 3g)

    % Briefly discuss what you see in the figure (make sure to use the 
    % following terms: ray path, caustic, multipathing, low velocity layer).
    
    % The figure shows how the ray path travel through the medium, and how
    % they are influenced by the velocity of the material. The low-velocity
    % region slows down the ray, and that can be seen as the raypaths gets
    % delayed and will bend out. Above the gass cloud we see multiple ray paths
    % after being bend intefering with each other causingcustic network
    % The figure shows multipathing where the ray
    % propagates in a diffrent direction despite being in the same velocity
    % region.








%% Oppgave 4 – Geothermal Energy 

% 4a)

    % Geothermal Energy is renewable source that uses energy extracted 
    % from the heat of earths inner interior. The energy is a 
    % combination of diffrent origins/ sources, like residual heat from 
    % when earth was formed, Radioactive decay and Tectonic activity.
    % Geothermal Energy can play a big part of our climate goals. unlike
    % oil and gass, it is a sustainable and low emisstion energy source.
    % There are very little CO2 emission, and for some places like Iceland 
    % geothermal energy can eliminate fossil fuels for electricity
    % production and to heat Reykjavik sidewalks and eliminate the need 
    % for gritting.



% 4b)

    % Geophysics methodes can be very useful for Geothermal energy:
    % To confirm areas with potential geothermal energy production.
    % To be able to study and map the structures using seismic data. 
    % It is then possible to obtain 3D Vp and Vp/Vs velocity models.
    % This will help to understand the compoasition and fluid content.
    % Other Geophysics methodes that is useful for geothermal is 
    % to be able to maps faults and tectonic movement that are
    % relevant to geothermal systems. And monitoring of geothermal fields 
    % when fluid is injected
