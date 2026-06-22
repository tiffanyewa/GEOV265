%% Geov112 Exercise Tectonics- Tiffany

function [beta, v] = Exercise_Tectonic(lamP, lamX, w, phiP, phiX)
    
    R = 6371 *10^5;
    A = phiP-phiX;
    a = acosd(sind(lamX)*sind(lamP)+cosd(lamX)*cosd(lamP)*cosd(A));
    C = asind((cosd(lamP)*sind(A))./sind(a));
    
    v = pi/180*w*10^-7*R*sind(a);
    
    beta = 90+C;
    % trenger en if stening for å justere for kvandrant

end 