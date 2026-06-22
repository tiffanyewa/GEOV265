%% Exercise Set 2 GEOV265 - Tiffany Ajayi


%% Oppgave 1- 1D interpolation

% 1a)

    x = linspace(-4,4,11);

    y = x.*exp(-x.^2);

    % figure(1)
    % plot(x,y)

% 1b)

    xq = linspace(-4,4,37);

    vq1 = interp1(x,y,xq);

    % figure(2)
    % plot(x,y,'o', xq,vq1,':.')

% 1c)

   
    vq2 = interp1(x,y,xq, 'spline');

    % figure(3)
    % plot(x,y,'o', xq,vq2,':.')

% 1d) 
    
    % When using the linear interpolation the average of every point "Xq"
    % is calculated and linear lines from each point is connected? And the 
    % adjecent points is connected with straight lines. This makes
    % linear interplation bad for curvetures....
    % a linear interpolation it will always be discontinuity. or a linear
    % function we not controll the 1 or 2nd order derivitives,
    % hens making it harder to fit the lines through the points

    % The spline interpolation represents a much smoother curve of the
    % function. We get a function defined by polynomials, so that it
    % possible to have a continiues curvetures line passing all 
    % of the points. The spline will gives us a data that we can assume are 
    % more then likely corecct compear to the linear interpolation. 

    % The absolute error is given as:

        % Absolute_error = abs(f_true-f_int)

    % f_ori being the original function, and f_inter being the
    % interpolateted. This absolute error will tell how much diffrences 
    % is between the original and the interpolated values

    % The relative value is described as the Absolute value devided by the
    % magnitude. And is given as:
        
        % abs(f_true-f_int)/f_ori 
        % *100 to gives it in procent 

    % This tells how large the error is in form of magnetude 
    % The absolute value gives us a direct insight of the diffrences
    % between the true and the interplates function. While the relative
    % error is a ratio between the two functions. The relative value is
    % more suiteble for functions with wide varios of values
 
        
% 1e)

 
    figure(4)
    
    plot(x,y,'o', LineWidth=2)
    hold on 
    plot(x,y, xq,vq1,':.',LineWidth=2)

    plot(x,y, xq,vq2,'-*', LineWidth=2)

    legend('Original','Linear Interpolation','Cubic Spline Interpolation')
    title('Comparison of the Interpolations')

    a1 = abs(vq1-vq2);
    r1 = a1./abs(vq2);

    figure(5)
    subplot(2,1,1)
    plot(a1)
    title('Linear interploation vs Spline interpolation')
    xlabel('x-values')
    ylabel('Absolute Error')

    subplot(2,1,2)
    plot(r1)
    xlabel('x-values')
    ylabel('Relative Error')


    % From the plot it is easy to see that the function "vq1" wich is the
    % linear interpolation goes through the original points as a stright
    % line, missing curvatures. The variatiaton in the function is not
    % expressed in a optimal way for the linear interplation

    % Can see that the spline function goes throuth each point, and due to
    % use of cubic polynomals it creates a curve. In som cases for a steep
    % slope the spline interpolation can exaggerate causing overshooting.
    
    % the plot shows us pretty similar function lines for the start and end
    % of the x-values. As expected the Absolute Error is near Zero. Where
    % the linear function is stright while the spline function cureves is
    % where the Absolute error should be the higest. In the middel at x = 0
    % the x=y, so the Absolute error should be zero. The Absolute Error
    % should be symterical at each side of x = 0

    % The Relative Error 

    
    
    clear vars


%% Oppgave 2 - 1D and 2D Interpolation



% 2a)  

     

    % 1D interpolation is used to find an unkwon value between two kown
    % valuepoint. In other word, knowing the points f(x0,y0) and f(x1,y1)
    % and finding (x,y) can be done by interpolation. 

   

        % Nearest-Neighbor Interpolation:
            % Is when using the nearest value that is known for the
            % new point. This gives a step like approximation  

        % Linear Interpolation:
            % Calculates a straight line between the two known points/ the
            % known points. The y-value will be esitmated at a new x using
            % the straight line

        % Spline Interpolation:
            % Uses polynoal function to make a best fitting curve passing
            % the points. making it possible to have first and second
            % derivatives. 


% 2e)

    Marmousi = load('marmousi.txt');

    x = [0:24:9192];
    z = [0:24:2904];

    row = length(x);
    col = length(z);
    
    Marmousi = reshape(Marmousi,[col,row]);

    
    
    
    Q1=  Marmousi(68,172);
    Q2 = Marmousi(68,173);
    Q3 = Marmousi(67,172);
    Q4 = Marmousi(67,173);

    x1 = 1632;
    x2 = 1608;
    z1 = 4128;
    z2 = 4152;

    xp = 1615;
    zp = 4135;
    
    % Interpolating in the y-direction

    term1 = 1/((x2-x1)*(z2-z1));
    term2 = (x2-xp)*(z2-zp);
    term3 = (x2-xp)*(zp-z1);
    term4 = (xp-x1)*(z2-zp);
    term5 = (xp-x1)*(zp-z1);


    point=term1*(Q1*term2+Q2*term3+Q3*term4+Q4*term5)



% 2f)
    
   depth = [500:10:1900];
   point2 = 630;

   [X, Z]=meshgrid(x, z);
 
   Vq3 = interp2(X,Z,Marmousi,point2,depth,'spline');

   figure(7)

   plot(Vq3,depth)
   title('2D spline interpolation on the Marmousi model')
   set(gca, 'YDir','reverse')

   
   % The plot shows how the velocity changes with the depth. The lines in
   % the plot shows a more smoothly curvetures for for the changes in
   % velocities. can assume that some of the points where there is fast
   % changes in velocitys are exaggerating and not precise.


clear var


%% Oppave 3 -  1D Derivatives

% 3a)

   
    x1 = linspace(-4,4,31);
    f1 = exp(-x1.^2).*sin(x1).^2;

    d1 = compute_derive(x1, f1);

  
% 3b)

    anal1 = sin(x1).^2.*(-(2*x1)./exp(x1.^2))+ 2.*cos(x1).*sin(x1).*exp(-x1.^2);

    figure(8)

    plot(x1,f1, LineWidth=2)
    hold on 
    plot(x1, d1,'--', LineWidth=2)
    plot(x1, anal1, LineWidth=2)
    title('Derivative for 31 equidistant points')
    ylabel('derivative values')
    xlabel('x-values ')
    legend('Original','Numerical deriv','Analytical deriv')



 % 3c)

    x2 =linspace(-4,4,81);
    f2 = exp(-x2.^2).*sin(x2).^2;

    d2 = compute_derive(x2,f2);

    anal2 = sin(x2).^2.*(-(2*x2)./exp(x2.^2))+ 2.*cos(x2).*sin(x2).*exp(-x2.^2);

    figure(9)

    plot(x2,d2, LineWidth=2)
    hold on
    plot(x2, anal2,'--', LineWidth=2)
    legend('Numerically', 'Analytically')
    title('Derivative for 81 equidistant points')
    xlabel('x-value')
    ylabel('Derivative')
 

% 3d)

    abs1 = abs(anal1-d1);
    relativ1 = abs(d1-anal1)./abs(anal1);
    
 


    figure(10)

    subplot(2,1,1)
    plot(x1, abs1, 'm', LineWidth=2)
    title('Derivation at 31 values: Analyticall vs Numericall')
    xlabel('x-values')
    ylabel('Absolute Error')

    subplot(2,1,2)
    title('Derivation at 31 values')
    plot(x1, relativ1, 'b', LineWidth=2)
    xlabel('x-values')
    ylabel('Relative Error')
    



    abs2 = abs(anal2-d2);
    relativ2 = abs(d2-anal2)./abs(anal2);

   
    figure(11)
   
    subplot(2,1,1)
    plot(x2, abs2, 'g', LineWidth=2)
    title('Derivation at 81 values: Analyticall vs Numericall')
    xlabel('x-values')
    ylabel('Absolute Error')

    subplot(2,1,2)
    title('Derivation at 81 values')
    plot(x2, relativ2,'r', LineWidth=2)
    xlabel('x-values')
    ylabel('Relative Error')

    


% 3e

    % MATLB has its own commando for computing derivatives numerically:
    % diff(x)

  
    x3 = linspace(-4,4,81);
    iii = 8/80;
    f3 = exp(-x3.^2).*sin(x3).^2;
  
    Df = diff(f3)./iii

    figure (12)
    plot((x3(1:80)), Df, LineWidth=2)
    hold on 
    plot(x3, anal2, LineWidth=2)

    title('Analyticall (MATLAB command) vs Analyticall Derivation')
    xlabel('x-values')
    ylabel('derivative value')

    legend('MATLAB command','Analayticall')

   

 %%  Oppgave 4 - 1D Integration 


    clear ver



 % 4b) 

      x = linspace(0,3,4);
      % dx = lengde / n-1
      dx = 3/3
      funk1 = x.^3;
      int1 = sum(funk1.*dx)
      
 % 4c)
     
     t = linspace(0,3,40);
     funk2 = t.^3;
     dx1 = 3/39;

     int2 = sum(funk2.*dx1) 

% 4e)

     v = linspace(0,3,120);
     funk3 = v.^3;
     dx2 = 3/119;
        
     int3 = sum(funk3*dx2)


% 4f) 

    trapz1 = trapz(x,funk1)
    trapz2 = trapz(t,funk2)
    trapz3 = trapz(v,funk3)


% 4g)
    
    origi = (3.^4)/4;

    ab1=abs(int1-origi);
    re1=(ab1/origi)*100;

    ab2=abs(int2-origi);
    re2=(ab2/origi)*100;

    ab3=abs(int3-origi);
    re3=(ab3/origi)*100;


    % figure(13)
    % 
    % q = [ab1 ab2 ab3];
    % p = ["4 points" "40 points" "120 points"];
    % bar(p,q)
    % 
    % title('Absolute Error' )
    % 
    % 
    % figure(14)
    % 
    % l = [re1 re2 re3]
    % j = ["4 points" "40 points" "120 points" "trapez1" "trapez2" "trapez3"];
    % bar(j,l)
    % 
    % title('Relative Error' )
    % 

    value = [int1, int2, int3, trapz1, trapz2, trapz3];
    ab = abs(value-origi);
    re = (ab./origi)*100;
    error = [ab;re]


    figure(3000)

    bar(j,error)
    legend('Absolute Error', 'Relative Error')
    title('Relativ and Absolute Error')

    % int1 gives us the larges error, following next by int2, and then
    % int3. The sum method is similar to the Rieman sum, underastimating
    % the value. The more point (dx) we have, the finer and better the
    % aproxximation of the intergral will be, the histogram is showing
    % smaller and smaller Errors for the integral calculation with the most
    % points.



%% Oppgave 5 - 2D Derivatives

clear ver 

% 5a)
   


   x = [-1:0.1:1];
   y = [4.5:-0.1:-4.5];
   y0 = -0.25;

   [X Y]= meshgrid(x,y);

   e = exp(-(Y-y0).^2);
   velo= sin(2*pi.*X)+(X.*Y.*e);

   

   
   figure(15)

   subplot(2,1,1), imagesc(x,y,velo), title('Fuction 5a) imagesc')
   colorbar
   
   set(gca, 'YDir','normal')

   subplot(2,1,2), surf(X,Y,velo), title('Fuction 5a) surf')
   colorbar

   colormap spring;



% 5b)
    
   
    dv_x = 2*pi.*cos(2*pi.*X) + Y.*e;

    dv_y = X.*e.*(1-(2.*Y).*(Y-y0));

    % figure(200)
    % 
    % surf(X,Y, dv_x), title('Analytical Derivative With Respect to x')
    % 
    % figure(201)
    % 
    % surf(X,Y, dv_y), title('Analytical Derivative With Respect to y')

% 5c)

    [dF_x, dF_y] = gradient(velo);

    figure(16)
    
    subplot(2,1,1), surf(dF_x), title('Numerical Derivative With Respect to x')
    colorbar;

    subplot(2,1,2), surf(X,Y, dv_x), title('Analytical Derivative With Respect to x')
    colorbar
  

    figure(17)

    subplot(2,1,1), surf(dF_y), title('Numerical Derivative With Respect to y')
    colorbar

    subplot(2,1,2), surf(X,Y, dv_y), title('Analytical Derivative With Respect to y')
    colorbar
   









    function deriv = compute_derive(x,f);

    n = length(x);

    deriv = zeros(1,n);

    for i = 1:n-1

    deriv(i) = (f(i+1) - f(i))/ (x(i+1)-x(i));
    
    end

    % for the last n (31) in the array 

    deriv(n) = (f(n) - f(n-1))/ (x(n)-x(n-1));
end 


 























