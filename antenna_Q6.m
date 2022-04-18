%                ASSIGNMENT-2 


%    NAME- SHYAM KUMAR SINGH
%    STUDENT_ID-  SC21M083
%    BRANCH- RF AND MICROWAVE ENGINEERING
%    SUBJECT-Antenna Theory & Design

% QUESTION(6):-Plot the Radiation Pattern of Dolph-Chebyshev array using Matlab.




clc;
clear all;
f=input('Enter the operating frequency(Hz)  f=');
N=input('Enter the no of elements N= ');
lamda=3e8/f ;
d=input('Enter the distance b/w elements(meter) d= ');
k=2*pi/lamda;
thetha=0:0.01:2*pi;
%psi=k*d*cos(thetha);
%AFn=(1/N)*sin(N*psi./2)./sin(psi./2);
u=0.5*k*d*cos(thetha*pi)
R=input('Enter side lobe ratio' );
c=chebwin(N,R);
b=c' ;
x=mod(N,2);
if x==0 ;
    for i=1:(N/2);
        a(i)=b((N/2)+i);
    end
elseif x~=0;
    for i=0:floor(N/2);
        a(1+i)=b(round(N/2)+i);
    end
end
if x==0 ;
    AF=0;
    for n=1:N/2;
        AF=AF+a(n).*cos(((2*n-1))*u);
    end
elseif x~=0;
    AF=0;
    for n=1:round(N/2);
        AF=AF+a(a).*cos((2*(n-1))*u);
    end
end
plot(thetha,abs(AF))
figure;
AFdb=20*log10(abs(AF));
polar(thetha,abs(AF));
