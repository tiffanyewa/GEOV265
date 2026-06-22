%% Answers to Excerise Set 5 geov112 - Tiffany

%% Oppgave 1 - Plotting of 2D Veolocity Model 

% 1a)
s = sqrt(3);
  
    xx = [
        3 4.5 4.5/s;
        4 5.4 5.4/s;
        8 8.2 8.2/s;
        ];
    

    thickness = xx(:, 1);
    pv = xx(:, 2);
    sv = xx(:, 3);
    
  
    
    depth = [0;cumsum(thickness)];  %cumsum summs the previous elemment in the array with the next. n, n1+n), n2+(n1+n)
  

    horizontal = [0:0.02:40];
    vertical = [0:-0.01:-max(depth)];

    [H, V]= meshgrid(horizontal, vertical);
  
    pp = zeros(size(H));
    S_velocity_model = zeros(size(H));

    pp(1:300,:)=pv(1,:);
    pp(301:700,:)=pv(2,:);
    pp(701:end,:)=pv(3,:);
    
    P_velocity_model=pp;

    S_velocity_model=P_velocity_model./sqrt(3);
  
    
    
    % 1b)
    
  
     figure(1)

 % imagesc
    subplot(2,2,1)
    imagesc(horizontal,vertical,P_velocity_model)
    c =colorbar;  
    c.Label.String = ('Velocity [km/s]');
    title('Imagesc');
    xlabel('Horizontal Distance [km]');
    ylabel('Depth [km]');
    axis xy;
    
% mesh

    subplot(2,2,2)
    mesh(horizontal,vertical,P_velocity_model)
    
    colorbar;
    title('Mesh');
    c =colorbar;  
    c.Label.String = ('Velocity [km/s]');
    xlabel('Horizontal Distance [km]');
    ylabel('Depth [km]');
    zlabel('velocity [km/s]')
    set(gca, 'YDir', 'reverse')
    


% contour 

    subplot(2,2,3)
    contour(horizontal,vertical,P_velocity_model)
    
    colorbar;
    c =colorbar;  
    c.Label.String = ('Velocity [km/s]');
    title('Contour');
    xlabel('Horizontal Distance [km]');
    ylabel('Depth [km]');
  

   
% 1d-profile

    subplot(2,2,4)
    plot(P_velocity_model(:,6), vertical)
    
    title('1D-profile');
    ylabel('depth [km]');
    xlabel('velocity [km/s]');
    grid on
   

  
 
    %% Oppgave 2 - Seismic Processing - 2D Velocity Model


% 2a)
    
    % velocity model of the area around valhall

    z = [0:-0.02:-2];
    
    v= 1.55-0.47.*z;

    [Ze, Ve]= meshgrid(z,v);
   

    figure(2)
    subplot(1,2,1)

    plot(v, z)
    title('plot - velocity model')
    xlabel('velocity [km/s]')
    ylabel('depth [km]')

    subplot(1,2,2)

    stairs(v, z)
    title('stairs - velocity model')
    xlabel('velocity [km/s]')
    ylabel('depth [km]')
    
  % 2b)  
    
    co_x = [3.5:0.02:5.5];
    co_z = [-1.5:0.01:0];
    [X, Z]=meshgrid(co_x, co_z);

    x_0 = 4.5;
    z_0 = -0.6;
    r_0 = 0.4;k

    r = sqrt((X-x_0).^2+(Z-z_0).^2);
    
    v2 = 1.55 - 0.47*Z - 0.8*exp(-(r).^2/r_0.^2);
    v1 = 1.55-0.47*Z;


        
    figure(3)

    subplot(1,2,1)

    contour(X, Z, v2)
    colorbar;
    colormap(hot)
    c =colorbar;  
    c.Label.String = 'Velocity [km/s]';
    
    xlabel('velocity [km/s]');
    ylabel('depth [km]');
    title('Contour Plot of v2');
    
    subplot(1,2,2)
    
    contour(X,Z, v1)
    colorbar;
    colormap(hot)
    c =colorbar;  
    c.Label.String = 'Velocity [km/s])';

    xlabel('velocity [km/s]');
    ylabel('depth [km]');
    title('Contour Plot of v1');

% 2c)

    
    figure(4)

    subplot(1,2,1)

    imagesc(co_x,co_z, v2)

    colorbar;
    colormap(hot)
    c =colorbar;  
    c.Label.String = 'Velocity [km/s]';

    
    xlabel('velocity [km/s]');
    ylabel('depth[km]');
    title('Imagesc Plot of v2');
    axis xy


    subplot(1,2,2)
    
    imagesc(co_x,co_z, v1)

    colorbar;
    colormap(hot)
    c =colorbar;  
    c.Label.String = 'Velocity [km/s])';

    xlabel('velocity [km/s]');
    ylabel('depth[km]');
    title('Imagesc Plot of v1');
    axis xy
    

% 2d)


    
    v1_d = v2(:,find(co_x==3.5));
    v2_d = v2(:, find(co_x == 4.6));
    
    
    figure(5)

    subplot(1,2,1)
    plot(v1_d, co_z,'m',LineWidth=1.5)

    title('oppgave 2d) - x = 3.5')
    legend('x= 3.5')
    xlabel('velocity [km/s]');
    ylabel('depth [km]');

    subplot(1,2,2)
    plot (v2_d,co_z,'b', Linewidth=1.5)
   
    title('oppgave 2d) - x = 4.6')
    legend('x= 4.6')
    xlabel('velocity [km/s]');
    ylabel('depth [km]');

%% Opppgave 3 - Seismic Velocity Models

% 3a) 

    Marmousi = load('marmousi.txt');
    x = [0:24:9192];
    z = [0:-24:-2904];

    row = length(x);
    col = length(z);
    
    reshape_Marmousi = reshape(Marmousi,[col,row]);

    figure(6)
    imagesc(x,z,reshape_Marmousi)
    colorbar;
    c =colorbar;  
    c.Label.String = ('Velocity [m/s]');
    title('Imagesc - Marmousi Model')
    xlabel('Distance [m]');
    ylabel('depth [m]');
   
    set(gca, 'YDir','normal')

% 3b) 


[X, Z]=meshgrid(x, z);

    figure(7)
    contour(X, Z, reshape_Marmousi);

    colorbar;
    c =colorbar;  
    c.Label.String = ('Velocity [m/s]');

    title('Contour - Marmousi Model')
    xlabel('Distance [m]');
    ylabel('depth [m]');
    set(gca, 'YDir','normal')
   
   

    figure(8)  
    contourf(X, Z, reshape_Marmousi)

    colorbar;
    c =colorbar;  
    c.Label.String = ('Velocity [m/s]');

    title('Contourf - Marmousi Model')
    xlabel('Distance [m]');
    ylabel('depth [m]');
    set(gca, 'YDir','normal')

% 3c)

    
    average_velocity = mean(reshape_Marmousi(':'))
    min_velocity = min(reshape_Marmousi(':'))
    max_velocity = max(reshape_Marmousi(':'))


 %  3d)

     x = [0:24:9192];
     z = [0:-24:-2904];

     loc1 = x(60)
     loc2 = x(270)
     loc3 =x(380)

     figure(9)
     stairs(reshape_Marmousi(:, 60),z, LineWidth=1.5)
     hold on 
     stairs(reshape_Marmousi(:, 270),z, LineWidth=1.5)
     stairs(reshape_Marmousi(:, 380), z, LineWidth=1.5)

     title('1D-profiles')
     xlabel('velocity [m/s]')
     ylabel('depth [m]')
     legend('x = 1416m', 'x = 6456m', 'x = 9096m')

    % For the profile at x = 1416 we see that there are lower velocity near
    % the surface, but becomes faster with increasing depth. For this area
    % there is a greater notisble velocity around 2500m depth. That can
    % indicate a diffrent type of layers/ sediments with a higher velocity. 

    % For the profile at x = 6456 there are more various of velocity 
    % through the layers. It looks like it's some fult structures/fractures. 
    % The velocity at this point varies through the factors and depth,
    % but do not meet a very high velocity layer. 

    % For the profile at x = 9096 is at the far right, at the end of the 
    % x - profile. This point behaves a bit similar to the first point i
    % choose. it meets a higher velocity layer, idicating there can be
    % structurs with other properties. this high velocity is seen around
    % 2000m depth 



%% Oppgave 4 - Magma Chamber Dynamics IV

% 4a) 

    clear all;
    
    

    z = [-5:0.01:-3];
    y = [-1:0.01:1];
    x = [-1:0.01:1];

    nu = 1/2 *(50/(50+50));
    dv = 0.01;
    vol = 0.01^3;
    cons = vol*dv*(nu+1)/(3*pi);
    
    origin = [0 0 0];
    
   [X, Y, Z]=meshgrid(x, y, z);


    dist = ((X-origin(1)).^2 + (Y-origin(2)).^2 + (Z-origin(3)).^2);
    r = sqrt(dist).^3;
    z_def = (origin(3)-Z)./r;
    z_disp = sum(z_def(:));

    dv = 1e5*cons*z_disp


    % 4b) 

    rec =linspace(-20,20,41);
    
        disp1=[];
    for i = 1: length(rec)

        dist1 = (X-rec(i)).^2 + (Y-origin(2)).^2 + (Z-origin(3)).^2;

        r = sqrt(dist1).^3;
        dv1 = (origin(3)-Z)./r;
       
        disp1 = [disp1, sum(dv1(:))];
         
    end

         ver_d = cons*disp1*1e5;

    figure(10)
    colormap spring
    plot(rec, ver_d, 'r-^', LineWidth=1.5)

    grid on 
    title('oppgave 4b - total vertical deformation')
    xlabel('receiver distance [km]')
    ylabel('vertical displacment [cm]')
  
% 4c)

    z0 = [-1:0.01:1];
    y = [-1:0.01:1];
    x = [-1:0.01:1];
    

    [xx, yy, zz]= meshgrid(x,y,z0);

    dist = (xx.^2 + yy.^2 + zz.^2);
    dist = sqrt(dist);

    approx= find(dist<=1);

    sphX = xx(approx);
    sphY = yy(approx);
    sphz = Z(approx);


    spher_dist = ((sphX-origin(1)).^2 + (sphY-origin(2)).^2 + (sphz-origin(3)).^2);
    r = sqrt(spher_dist).^3;
    dv_sph = (-sphz)./r;

    dv_sph = sum(dv_sph(:));

    dv_sph = 1e5*cons*dv_sph 


% 4d)
     
    sph_rec = linspace(-20,20,41);

    sph_disp=[];

    for j = 1:length(sph_rec)

        spher_dist = ((sphX-sph_rec(j)).^2 + (sphY-origin(2)).^2 + (sphz-origin(3)).^2);
        R = sqrt(spher_dist).^3;
        sph_d = (-sphz)./R;
       
        sph_disp = [sph_disp, sum(sph_d(:))];
         
    end

         sph_disp = cons*sph_disp*1e5;

      figure(11)
      plot(sph_rec, sph_disp,'-o', LineWidth=1.5)
      colormap spring 
      grid on 
      title('oppgave 4d - displacemt of a spherical magma chamber')
      xlabel('receiver distance [km]')
      ylabel('vertical deformation [cm]')



% 4e)

    figure(12)

    plot(rec, ver_d, 'r-^', LineWidth=1.5)
    hold on 
    plot(sph_rec, sph_disp,'b-o', LineWidth=1.5)
    grid on 

    title('comparison of spher vs cube chamber')
    xlabel('receiver distance [km]')
    ylabel('vertical deformation [cm]')

    % by plotting them togheter we can see some similarities, such as the 
    % form and shape. They are bolth symmertical with the highest value of
    % dicplament above orgin. As we move away from the oroigin, the
    % displacement decreases going towards zero. the displacemet for both of them is dependent
    % on the distant from the source.
    % At 3 km going right or left from origin, the vertical displacment is
    % halves the maximun displacement for bolth of the chambers.
    % The magnitude of the spher chamber is smaller then the other chamber,
    % but has a wider peak. that can be becuase the spher has a round 
    % surface, comperard to one concetraded points. 
    % I belive that the spher has a bigger area, and thats also why we see
    % a flatter slope for the spher and a steeper slope for the cube. 

%% Oppgave 5 - Explore Seismics / Regional Seismology V

% %5a)
% 
%     model = [6 8;
%         5.4, 6
%         ];
%     thi = model(1,:)
%     v = model(2,:)
%     depth = 0, cumsum(thi)
%     incident_angle = 25
%     v2_angle = asind(sind(25)*6/4)
%     ray_path1 = cosd(incident_angle)*6
% 
%     ray_path2 = cosd(v2_angle)*2
% 
%     t1= ray_path1/5.4
%     t2 = ray_path2/6
%     total_time = 2*(t1+t2)
% 
%     x1 = sqrt(6^2-ray_path1^2) % pytagoras
%     x11 = sind(25)*6
% 
%     x2 = sqrt(2^2-ray_path2^2) % pytagoras
%     x22 = sind(v2_angle)*2
% 
%     f1= [0, x1, x2+x1]
%     f2 = [0, -6, -8]
%     f3=[x2+x1, x2+x1+x2, 2*(x2+x1)]
%      f4 = [-8, -6, 0]
% 
%     plot (f1, f2 ,'-b')
%     hold on 
%     plot(f3,f4, 'b' )
%     set(gca, 'yDir', 'normal')
% 
% 
%  %5b) 
% 
%    total_time=[];
%   for i = 0:90
%      sin_value = sind(i)*6/4
%      if abs(sin_value) <=1
%          v2_angle= asind(sin_value);
%      else
%         continue;
%      end
% 
%     ray_path1 = cosd(i)*6
% 
%     ray_path2 = cosd(v2_angle)*2;
% 
%     t1= ray_path1/5.4;
%     t2 = ray_path2/6;
%     total_time =[total_time, 2*(t1+t2)];
% 
%   end 
%   figure(80)
%   total_time;
% 
% plot(sin_value, total_time)
% 
% 


















