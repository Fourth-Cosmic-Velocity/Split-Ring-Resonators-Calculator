Er = 2.33; % Relative Permittivity of Substrate
h = 1.575; % Height of the substrate
GC = 2.451; % Gamma value for C-SRR

rext = 4; % Largest Radius in mm
c = 0.5; % Width of metal in mm
t = 0.001; % Metal thickness in mm
g = 0.2; % Gap between splits in mm
s = 0.2; % Seperation between inner ring and outer ring in mm

c0 = 3*10^11; % Speed of light in mm/s
E0 = (1/36*pi)*10^-12; % Absolute Permittivity in F/mm
a = c/2;
b = a + s;
r0 = rext-c-s/2; % Mean radius
lC = 2*pi*rext-g; %   Length of the ring
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


CCm = ((pi*r0)-g)*(Cpul/2); %Effective Metal Ring Capacitance
CCg = (E0*c*t)/2*g; %Effective Gap Capacitance
CC = CCm + CCg % Total Capacitance
LC = 0.0002*lC*(log(4*lC/c)-GC)*10^-6 % Total Inductance
fC = 1/(2*pi*sqrt(LC*CC)) % Resonance Frequency 
