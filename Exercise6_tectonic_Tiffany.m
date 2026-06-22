%% Geov112 Exercise Tectonics- Tiffany 


%%  problem 2

% 2a)

    % from the book:
    % Calculate the relative motion at 28 S, 71 W on the Peru–Chile Trench
    % using the Nazca–South America rotation pole:

    % Nazca–South America 56 N, 94 W, 7.2

    [Azi, Velocity]=AziV(56, -28, 7.2, -94, -71);

    fprintf('\n')
    fprintf('The Nazca plate moving relative to the south America plate: \n')
    fprintf('\n')
    fprintf('The relative motion of the plates is: %s cm/yr \n', num2str(Velocity))
    fprintf('Azimuth: %s degrees', num2str(Azi))
    fprintf('\n')


% 2b)

    % Calculate the relative motion at 64.26 N, 21.13W of Þingvellir on
    % the North Amercan side
    % using the Eurasia - North America:rotation pole:

    % Eurasia - North America:
    % lamX = 64.4 N
    % PhiX = 1358 E
    % w = 2.1

    % Þingvellir:
    % lamP = 64.26 N
    % PhiP = 21.13 W

    [Azi1, velocity1]=AziV(62.4, 64.26, 2.1, 135.8, -21.13);

    fprintf('\n')
    fprintf('The  North American side of Þingvellir relative to the European plate: \n')
    fprintf('\n')
    fprintf('The relative motion of the plates is: %s cm/yr \n', num2str(velocity1))
    fprintf('Azimuth: %s degrees', num2str(Azi1+180))

    % adding 180 deg to the azimuth to adjust for the direction of the
    % velocity. 

%% 2c)
    
    % 25 points along the plate boundery between Africa and South America
    % latitude = [0°,-50°]

   points = [
       -0.40, -16.01;
       -1.43, -12.54;
       -3.14, -12.25;
       -6.32, -11.15;
       -8.12, -13.15;
       -10.38, -13.03;
       -13.17, -13.40;
       -13.24, -13.40;
       -15.51, -13.06;
       -18.17, -13.38;
       -21.48, -11.46;
       -23.21, -13.27;
       -27.25, -13.26;
       -28.35, -12.33;
       -30.19, -13.42;
       -31.51, -13.20;
       -33.55, -14.36;
       -36.12, -17.40;
       -38.55, -16.00;
       -40.46, -16.47;
       -43.38, -16.02;
       -45.35, -24.32;
       -46.57, -13.25;
       -47.55, -10.13;
       -48.57, -9.56
       ];

   lat = points(:,1);
   lon = points(:,2);


    % africa-south america
    % lat: 62.5 N
    % long: 39.4 W
    % w: 3.1

    veocity=ones(size(lat));
    azis=ones(size(lat));
    
    for i = 1:length(points)
    
     [beta, v]=AziV(62.5, lat(i), 3.1, -39.4, lon(i));
    
      veocity(i)= v;
      azis(i) =  beta;
    
    end
    veocity=veocity'
    azis= azis'

    
    % subplot; 
    % Upper plot showing how the velocity varies from 0° to -50°, 
    % as a sinusoid. The velocity increases and reach its peak around -25°,
    % and decreases going futher south from -25°to -50°. 
    % The Azimuth gives information about the plate boundery movement 
    % direction. The azimuth I got varies betweeen 75°-82, indicating the
    % african plate moves twoards eat.
   
    figure(1)

    subplot(2,1,1)
    plot(lat, veocity, 'r-*')
    title('Velocity for each point')
    ylabel('Velocity [cm/yr]')
    xlabel('Latitude  ')
    grid on

    set(gca, 'XDir', 'reverse')
    
    subplot (2,1,2)
    plot(lat, azis, 'm-o')
    title('Azimuth for each point')
    ylabel('Azimuth °')
    xlabel('Latitude')
    grid on
    set(gca, 'XDir', 'reverse')


    % stephane said to make a plot limited the degrees to 360 for the
    % azimuth, showing how little the variation acutall is 
    figure(2)
    subplot (2,1,1)

    plot(lat, azis, 'b-o')
    title('Azimuth for each point')
    ylabel('Azimuth °')
    xlabel('Latitude')
    grid on 

    set(gca, 'XDir', 'reverse')

    subplot(2,1,2)

    plot(lat, azis, 'm-*')
    title('azimuth for each point limited by 360 degrees')
    ylabel('Azimuth °')
    xlabel('Latitude')
    ylim([0,360])
    grid on 

    set(gca, 'XDir', 'reverse')





%% problem 3


% 3a) 
    
    % Given the rotation vectors for the Nazca plate relative to
    % the Pacific plate and the Pacific plate relative to
    % the Antarctic plate, can then calculate the
    % rotation vector for the Nazca plate relative to the Antarctic plate.


    % Nazca–Pacific:
    % 55.6 N 
    % 90.1 W 
    % 13.6

    % Pacific–Antarctica:
    % 64.3 S 
    % 96.0 E 
    % 8.7
        
     [m, la, lo]=rotation(13.6,8.7, 55.6, -64.3, -90.1, 96);
     fprintf('\n')
     fprintf('Antartica relative to the Nazca plate: \n')
     fprintf('\n')
     fprintf('The relative roation of the plates is: %s * 10^-7 deg/yr \n', num2str(m))
     fprintf('The location pole is located at latitude: %s N and longitude: %s W\n', num2str(la), num2str(abs(lo)))
    


% 3b)


   
    % north america-africa: 
        % knowing Africa- North America, we can turn the plate posistion
        % around (opposite vector).
        % going from 78.8 N and 38.3 E => to 78.8 S and 141.7 W
        % angular degree: 2.4

    % Africa - South America:
        % 62.5 N and 39.4 W
        % angular degree: 3.1

    % North america - South America:

     [m1, la1, lo1]=rotation(2.4,3.1, -78.8, 62.5, -141.7, -39.4);


    fprintf('\n')
    fprintf('North America plate relative to the South America plate: \n')
    fprintf('\n')
    fprintf('The relative roation of the plates is: %s * 10^-7 deg/yr \n', num2str(m1))
    fprintf('Latitude: %s N and Longitude: %s W \n', num2str(la1), num2str(abs(lo1)))
    





