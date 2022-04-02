
Er = 2.33; % Relative Permittivity of Substrate
h = 1.575; % Height of the substrate in mm
G = 2.636; % Gamma value for S-SRR

aext = 4; % Largest Radius in mm
c = 0.4; % Width of metal in mm
t = 0.035; % Metal thickness in mm
g = 0.4; % Gap between splits in mm
s = 0.2; % Seperation between inner ring and outer ring in mm

c0 = 3*10^11; % Speed of light in mm/s
E0 = (1/36*pi)*10^-12; % Absolute Permittivity in F/mm
a = c/2;
b = a + s;
a0 = aext-((c+s/2)*sqrt(4/3))% Mean radius
l = 6*aext-g; %   Length of the ring
hl = 3*a0-g;
k = a/(a+s);
k1 = (sinh((pi*a)/(2*h))/sinh((pi*b)/(2*h)));
kd = sqrt(1-k^2);
k1d = sqrt(1-k1^2);

if k>=0 && k<=0.7
    A = pi*(log((2*(1+kd^0.5))/(1-kd^0.5)))^-1;
    B = (1/pi)*log((2*(1+k1d^0.5))/(1-k1d^0.5));
elseif k>=0.7 && k<=1
    A = pi*(log((2*(1+k^0.5))/(1-k^0.5)))^-1;
    B = (1/pi)*log((2*(1+k1^0.5))/(1-k1^0.5));
end

Ee = 1 + (0.5*(Er-1))*(1/A)*B;
Z0 = (120*pi/sqrt(Ee))*A;
Cpul = sqrt(Ee)/(c0*Z0);


Cm = 0.5*hl*Cpul; %Effective Metal Ring Capacitance
Cg = (E0*c*t)/2*g; %Effective Gap Capacitance
CH = Cm + Cg % Total Capacitance
LH = 0.0002*l*(log(4*l/c)-G)*10^-6 % Total Inductance
fH = 1/(2*pi*sqrt(LH*CH)) % Resonance Frequency 
