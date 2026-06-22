%% rotation function 

    % Observerd plate:
    % p1: Angular velocity 
    % lat1: latitidue 
    % phi1: longitude

    % Fixed plate:
    % p2: Angular velocity 
    % lat2: latitidue 
    % phi2: longitude
                               
function [mag, lat_pole, phi_pole]=rotation(p1,p2, lat1, lat2, phi1, phi2)

    vx = p2*cosd(lat2)*cosd(phi2)+ p1*cosd(lat1)*cosd(phi1);
    vy = p2*cosd(lat2)*sind(phi2)+ p1*cosd(lat1)*sind(phi1);
    vz = p2*sind(lat2)+p1*sind(lat1);

    mag = sqrt(vx^2+vy^2+vz^2);

    lat_pole = asind(vz/mag);

    phi_pole = atan2d(vy,vx);


end 
     % output:
     % mag: giving the velocity
     % lat_pole: giving the latitude location pole 
     % phi_pole: giving the longnitude location pole

    % can aslo use, instead of atan2d:

    % if vx < 0
    % 
    %             phi_pole = phi_pole + 180;
    % 
    % 
    % end 
    
  

