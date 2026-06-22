%% answers to excerise set 1 geov112 - Tiffany

%% oppgave 1
% a)

% i
    a = (8 + 12.43);

    b = (- 85 - 61*7);

    c = a/b

% ii
    e = exp(2.94); % eulers

    f = factorial(15); % faculty (!)

    a2 =(cosd(28) + e);

    b2 = (f + 6.333);

    c2 = a2 / b2

% iii
    a3 = tan(pi/6);

    b3 = log(5.3222);

    c3 = a3 + b3

% b)

    % Answer i) makes sense since we should get something small when

    % deviding somthing little with somthing big, and a negativ ans. Answer ii) we are agian dividing somthing small with somthing big 

    % Aanswer iii) doubbel checked log(5.3222) and tan(pi/6) to see that the summes answer seemed right

clear all;

%% oppgave 2

% a)
    a = 0.01; % constant
    b = 0.12;  % constant 
    c = 1650;  % constant 

    v1 = a*0^2 + b*0 + c  

    v2 = a*100^2 + b*100 + c

    v3 = a*200^2 + b*200 + c

    v4 = a*300^2 + b*300 + c

    v5 = a*400^2 + b*400 + c

% b)
    % a har enehten 1/ms, og b har enheten 1/s eller s^-1, c har enheten m/s

% c)
    %a and b are relativ small constant, and the answer is increasing more and more from 1650 m/s

%% oppgave 3

%a)
    layer1 = 6370;       % radien to the earth

    layer2 = (6370-35);  % radien out to the upper mantel in km 

    layer3 = (6370-660); % radien out to the lower mantel in km

    layer4 = (6370-2900); % radien out to the outer core in km 

    layer5 = (6370-5150); % radien to the inner core in km

% volummet av en sfære er gitt ved 4/3*pi*r^3

    vol_inner_core = (4*pi*layer5^3)/3

    vol_out_core = 4/3*pi*layer4^3 - vol_inner_core

    vol_lower_mant = 4/3*pi*layer3^3 - (vol_out_core + vol_inner_core)

    vol_upper_mant = 4/3*pi*layer2^3 - (vol_out_core + vol_inner_core+ vol_lower_mant)

    vol_crust = 4/3*pi*layer1^3 - (vol_out_core + vol_inner_core+ vol_lower_mant+vol_upper_mant)



% b) 
    % the relativ volume is given by (100* volum of the layer) / volume of the earth

    vol_earth = (4*pi*6370^3)/3

    xx = [vol_crust vol_upper_mant vol_lower_mant vol_out_core vol_inner_core ];

    relative_volume = (xx*100)/ vol_earth % relativ volume given in precentages from crust to inner core

% c) 
    % in terms of volume the lower mantel is the largest, and the inner core is the smallest
 
%% oppgave 4 

% Quiz

%1 
    5*11/4

%2 
    5*8/3 + 3^7

%3
    9^1.25

%4 
    %If y has not been assigned a value, MATLAB will NOT allow you to define the equation x = y ^2 to store in memory for later use.

%5
    h = 12
    
    r = 2
    
    v = pi*r^2*h %volume to a cylinder

%6
format rat
    sin(pi/3)

%7
    [sin(pi/4) sin(pi/3) sin(pi/2)]