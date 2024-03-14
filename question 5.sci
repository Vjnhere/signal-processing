clc;
clear;
close;
N=input('Enter the value of N=');//N-point DFT
x=input('Enter the value of sequence [n]=');
subplot(3,2,1);
plot2d3(x);
title('Input sequence');
xlabel('Sample n');
ylabel('Amplitude');
//Calaulation OF N point DFT

for k=1:N;
    y(k)=0;
    for n=1:N
       y(k)=y(k)+x(n).*exp(-%i*2*%pi*(k-1)*(n-1)/n)
       A=real(y)
       B=imag(y)
       end
end
magn=abs(y);
x1=atan(imag(y),real(y));
phse=x1*(180/%pi);
disp('The output DFT Sequence');
disp(y);
subplot(3,2,2);
plot2d3(y);
title('The output DFT Sequence');
xlabel('Sample n');
ylabel('Amplitude');
 
 //Real value
disp('The Real value');
disp(A);
subplot(3,2,3);
plot2d3(A);
title('The Real value');
xlabel('Sample n');
ylabel('Amplitude');

//Imaginary Value

disp('The Imaginary value');
disp(B);
subplot(3,2,4);
plot2d3(B);
title('The Imaginary value');
xlabel('Sample n');
ylabel('Amplitude');

//Magnitude

disp('The Magnitude value');
disp(magn);
subplot(3,2,4);
plot2d3(magn);
title('The Magnitude value');
xlabel('Sample n');
ylabel('Amplitude');

//Phase response

disp('The Phase response');
disp(phase);
subplot(3,2,4);
plot2d3(phase);
title('The Phase response');
xlabel('Sample n');
ylabel('Phase response');
