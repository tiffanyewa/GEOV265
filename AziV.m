%% Function Velocity and Azimuth


% lamP and phiP is latitude and lognitude for the observed plate
% lamX and phiX is latitude and lognitude for the fixed plate
% w is the angular velocity

function [beta, v] = AziV(lamP, lamX, w, phiP, phiX)
    
    R = 6371 *10^5;
    A = phiP-phiX;
    a = acosd(sind(lamX)*sind(lamP)+cosd(lamX)*cosd(lamP)*cosd(A));
    C = asind((cosd(lamP)*sind(A))/sind(a));
    
    v = (pi/180)*w*10^-7 *R *sind(a);

    
    beta = 90+C;
    
    

end 

    %output:
    % v: the relative velocity 
    % beta: azimuth, the direction of the velocity