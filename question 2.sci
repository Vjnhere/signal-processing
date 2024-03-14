close all;
t=0:0.01:6;
f=4;
s1=sin(2*%pi*f*t);
f1=5;
s2=sin(2*%pi*f*t);

subplot(4,1,1);
plot(s1);
title('First signal');
xlabel('Time period');
ylabel('Amplitude');

subplot(4,1,2);
plot(s2);
title('Second signal');
xlabel('Time period');
ylabel('Amplitude');

//Addition of signal

subplot(4,1,3);
plot(s1+s2);
title('Added signal');
xlabel('Time period');
ylabel('Amplitude');

//Multiplication Of Signal

subplot(4,1,4);
plot(s1.*s2);
title('Multiplied signal');
xlabel('Time period');
ylabel('Amplitude');
