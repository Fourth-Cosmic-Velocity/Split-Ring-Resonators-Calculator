# Split-Ring-Resonators-Calculator
MATLAB code to calculate the resonance frequency of Hexagonal, Circular and Square SRRs
## Variables
### Circular SRR

Er = Relative Permittivity of Substrate
'\n'h = Height of the substrate in mm
GC = Gamma value for C-SRR ( A constant which varies with geometry( 2.451 for C-SRR)
rext = Radius to the outer boundaty of outer ring in mm
c = Width of metal in mm
t = Metal thickness in mm
g = Gap between splits in mm
s = Seperation between inner ring and outer ring in mm
c0 = 3*10^11; % Speed of light in mm/s
E0 = (1/36*pi)*10^-12; % Absolute Permittivity in F/mm

### Square SRR

Er = Relative Permittivity of Substrate
h = Height of the substrate in mm
GS = Gamma value for S-SRR ( A constant which varies with geometry( 2.853 for S-SRR)
aext = distance from the centre of SRR to the outer boundaty of outer square ring in mm
c = Width of metal in mm
t = Metal thickness in mm
g = Gap between splits in mm
s = Seperation between inner ring and outer ring in mm
c0 = 3*10^11; % Speed of light in mm/s
E0 = (1/36*pi)*10^-12; % Absolute Permittivity in F/mm

### Hexagonal SRR

Er = Relative Permittivity of Substrate
h = Height of the substrate in mm
GH = Gamma value for H-SRR ( A constant which varies with geometry( 2.636 for H-SRR)
aext = distance from the centre of SRR to the outer boundaty of outer hexagonal ring in mm
c = Width of metal in mm
t = Metal thickness in mm
g = Gap between splits in mm
s = Seperation between inner ring and outer ring in mm
c0 = 3*10^11; % Speed of light in mm/s
E0 = (1/36*pi)*10^-12; % Absolute Permittivity in F/mm

## Referance
1. [C. Saha and J. Y. Siddiqui, "A comparative analyis for split ring resonators of different geometrical shapes," 2011 IEEE Applied Electromagnetics Conference (AEMC), 2011, pp. 1-4, doi: 10.1109/AEMC.2011.6256871](https://ieeexplore.ieee.org/document/6256871).
2. [Saha, C. and Siddiqui, J.Y. (2011), Versatile CAD formulation for estimation of the resonant frequency and magnetic polarizability of circular split ring resonators. Int J RF and Microwave Comp Aid Eng, 21: 432-438](https://onlinelibrary.wiley.com/action/showCitFormats?doi=10.1002%2Fmmce.20533).
