//Discrete time sequence
clc
clear
//((1) unit impulse sequence
n_impulse=-10:10;
x_impulse= zeros(1,length(n_impulse));
x_impulse(n_impulse==0)=1;
clf
subplot(3,3,1)
plot2d3(n_impulse,x_impulse);
title("Unit Impulse");
xlabel("n")
ylabel("$\delta[n]$")

//(2) Unit Step Sequence
n_step=-10:10;
x_step=ones(1,length(n_step));
subplot(3,3,2);
plot2d3(n_step,x_step);
title("Unit Step");
xlabel("n")
ylabel("u(t)")

//(3) Unit Ramp Sequence
n_ramp=-10:10;
x_ramp=n_ramp.*(n_ramp>=0);
subplot(3,3,3);
plot2d3(n_ramp,x_ramp)
title("Unit Ramp")

//(4) Exponential séquence

n_exp=-10:10;
a=0.5;
x_exponential=a.^n_exp;
subplot(3,3,4);
plot2d3(n_exp,x_exponential);
title("Exponential")

//Sinusoidal Wave
yl=sin(0:2*%pi/100:8*%pi); //sinusoidal cos or sin-> how many cycles in yl->cycles 0 to pi
subplot(3,2,6);
plot(yl);
title("Sinusoidal")
